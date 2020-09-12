const Stock = require("../models/Stock");


module.exports = {
  index: function(req, res) {
    Stock.get(req, (err,rows,fields) =>{
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
    Stock.search(req,id, (err,rows,fields) =>{
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
      Stock.create(req, req.body, (err, rows, fields) =>{
          if(!err){
            res.json({status: 'the product has been added'});
          }else{
            console.log("Ha ocurrido un error: "+err);
          }
        });
    },

/* actualizar  registro*/
    update: function(req, res) {
      const id = req.params.id;
      // console.log(req.body);
      Stock.update(req, req.body, id, (err, rows, fields)=>{
        if(!err){
          res.json({status: 'Product has been updated'});
        }else{
          console.log(err);
        }

      });
    },
/* DELETE  registro*/
   delete: function(req, res) {
    Stock.destroy(req, req.params.id, (err, rows, fields)=>{
      if(!err){
        res.json({status: 'Product has been deleted'});
      }else{
        console.log(err);
      }
    });
  }

}
