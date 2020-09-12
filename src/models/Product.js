
const mysqlConnection = require('../database');
module.exports = {

  get: function(req, callback){
    mysqlConnection.query('SELECT products.id, products.name, products.description, products.specify_1, products.specify_2, products.status, categories.id as category_id, categories.name as category, brands.id as brand_id, brands.name as brand FROM products INNER JOIN categories ON products.id_category = categories.id INNER JOIN brands ON products.id_brand = brands.id;',callback);
  },

  search: function(req,id,callback){
    mysqlConnection.query('SELECT products.id, products.name, products.description, products.specify_1, products.specify_2, products.status, categories.id as category_id, categories.name as category, brands.id as brand_id, brands.name as brand FROM products INNER JOIN categories ON products.id_category = categories.id INNER JOIN brands ON products.id_brand = brands.id WHERE products.id ='+id, callback);
  },

  create: function(req, data, callback) {
    mysqlConnection.query(
    `INSERT INTO products SET
       id_category = '${data.category}',
       id_brand = '${data.brand}',
       name = '${data.name}',
       description = '${data.description}',
       specify_1 = '${data.specify_1}',
       specify_2 = '${data.specify_2}',
       status = '${data.status}'`,
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
