const Product = require("../models/Product");


module.exports = {
  index: function(req, res) {
    Product.get(req, (err,rows,fields) =>{
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
    Product.search(req,id, (err,rows,fields) =>{
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
      Product.create(req, req.body, (err, rows, fields) =>{
          if(!err){
            res.json({status: 'Product has been created'});
          }else{
            console.log("Ha ocurrido un error: "+err);
          }
        });
    },

/* actualizar  registro*/
    update: function(req, res) {
      const id = req.params.id;
      // console.log(req.body);
      Product.update(req, req.body, id, (err, rows, fields)=>{
        if(!err){
          res.json({status: 'Product has been updated'});
        }else{
          console.log(err);
        }

      });
    },
/* DELETE  registro*/
   delete: function(req, res) {
    Product.destroy(req, req.params.id, (err, rows, fields)=>{
      if(!err){
        res.json({status: 'Product has been deleted'});
      }else{
        console.log(err);
      }
    });
  }

}
