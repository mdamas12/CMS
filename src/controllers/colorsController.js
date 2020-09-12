const Color = require("../models/Color");


module.exports = {
  index: function(req, res) {
    Color.get(req, (err,rows,fields) =>{
      if (!err){
        res.json(rows);
        // res.send('hello world'));
      }else{
        console.log('err');
       }
     });
   },

  search: function(req, res) {
    const id = req.params.id;
    Color.search(req,id, (err,rows,fields) =>{
      if (!err){
        res.json(rows[0]);
      }else{
        console.log('err');
      }
    });
  },

/*insert Products*/
    create: function(req, res) {
       // console.log(req.body);
      Color.create(req, req.body, (err, rows, fields) =>{
          if(!err){
            res.json({status: 'Color has been created'});
          }else{
            console.log(err);
          }
        });
    },

/* actualizar  registro*/
    update: function(req, res) {
      const id = req.params.id;
      // console.log(req.body);
      Color.update(req, req.body, id, (err, rows, fields)=>{
        if(!err){
          res.json({status: 'Color has been updated'});
        }else{
          console.log(err);
        }

      });
    },
/* DELETE  registro*/
   delete: function(req, res) {
    Color.destroy(req, req.params.id, (err, rows, fields)=>{
      if(!err){
        res.json({status: 'Color has been deleted'});
      }else{
        console.log(err);
      }
    });
  }

}
