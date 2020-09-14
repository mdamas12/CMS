const Cart = require("../models/Cart");


module.exports = {
  index: function(req, res) {
    Cart.get(req, (err,rows,fields) =>{
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
    Cart.search(req,id, (err,rows,fields) =>{
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
       Cart.create(req, req.body, (err, rows, fields) =>{
          if(!err){
            res.json({status: 'Product added to shopping cart'});
          }else{
            console.log(err);
          }
        });
    },

/* UPDATE  Register*/
    update: function(req, res) {
      const id = req.params.id;
      // console.log(req.body);
      Cart.update(req, req.body, id, (err, rows, fields)=>{
        if(!err){
          res.json({status: 'updated item'});
        }else{
          console.log(err);
        }

      });
    },
/* DELETE  Register*/
   delete: function(req, res) {
    Cart.destroy(req, req.params.id, (err, rows, fields)=>{
      if(!err){
        res.json({status: 'product removed from cart'});
      }else{
        console.log(err);
      }
    });
  }

}
