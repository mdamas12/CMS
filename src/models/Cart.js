
const mysqlConnection = require('../database');
module.exports = {

  get: function(req, callback){
    mysqlConnection.query('SELECT products.id, products.name, products.description, products.specify_1, products.specify_2, products.status, categories.id as category_id, categories.name as category, brands.id as brand_id, brands.name as brand FROM products INNER JOIN categories ON products.id_category = categories.id INNER JOIN brands ON products.id_brand = brands.id;',callback);
  },

  search: function(req,id,callback){
      
    mysqlConnection.query(  `SELECT 
    carts.id as id_cart, carts.quantity, carts.status,
    users.id as user_id, users.name as username,
    stock.id as stock_id,  stock.price as price,
    colors.id as color_id, colors.name as color,
    presentations.id as presentation_id, presentations.name as presentation,
    sizes.id as size_id, sizes.name as size,
    coins.id as coins_id, coins.symbol as coin,
    products.id as product_id, products.name as producto_name,
    categories.id as categorie_id, categories.name as categorie,
    brands.id as brand_id, brands.name as brand 
    FROM carts 
    INNER JOIN users ON carts.id_user = users.id
    JOIN stock ON carts.id_stock = stock.id
    JOIN colors ON stock.id_color = colors.id
    JOIN presentations ON stock.id_presentation = presentations.id
    JOIN sizes ON stock.id_size = sizes.id
    JOIN coins ON stock.id_coin = coins.id
    JOIN products ON stock.id_product = products.id
    JOIN categories ON products.id_category = categories.id
    JOIN brands ON products.id_brand = brands.id
    
    WHERE carts.id_user =`+id, callback);
  },

  create: function(req, data, callback) {
    mysqlConnection.query(
    `INSERT INTO carts SET
       id_user = '${data.user}',
       id_stock = '${data.stock}',
       quantity = '${data.quantity}',
       status = 'shopping cart'`,
       callback
    );

    /* POST CON PROCEDIMIENTOS ALMACENADOS
    const {id, name, apellido, salario} = data;
    const procedure = 'CALL fisioscrud(?, ?, ?, ?);';
    mysqlConnection.query(procedure,[id, name, apellido, salario],callback);
    **/
  },


  update: function(con, data, id, callback) {
    mysqlConnection.query(
      `UPDATE products SET
      id_category = '${data.category}',
      id_brand = '${data.brand}',
      name = '${data.name}',
      description = '${data.description}',
      specify_1 = '${data.specify_1}',
      specify_2 = '${data.specify_2}',
      status = '${data.status}'
      WHERE id= ${id}`,
      callback
    );
  },

  destroy: function(con, id, callback) {
    mysqlConnection.query(`DELETE FROM products WHERE id = ${id}`, callback);
  },


}
