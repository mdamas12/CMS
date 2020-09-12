const Category = require("../models/Category");


module.exports = {
  index: function(req, res) {
    Category.get(req, (err,rows,fields) =>{
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
    Category.search(req,id, (err,rows,fields) =>{
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
      Category.create(req, req.body, (err, rows, fields) =>{
          if(!err){
            res.json({status: 'Category has been created'});
          }else{
            console.log(err);
          }
        });
    },

/* UPDATE  Register*/
    update: function(req, res) {
      const id = req.params.id;
      // console.log(req.body);
      Category.update(req, req.body, id, (err, rows, fields)=>{
        if(!err){
          res.json({status: 'Category has been updated'});
        }else{
          console.log(err);
        }

      });
    },
/* DELETE  Register*/
   delete: function(req, res) {
    Category.destroy(req, req.params.id, (err, rows, fields)=>{
      if(!err){
        res.json({status: 'Category has been deleted'});
      }else{
        console.log(err);
      }
    });
  }

}
