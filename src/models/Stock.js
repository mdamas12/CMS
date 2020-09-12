
const mysqlConnection = require('../database');
module.exports = {

  get: function(req, callback){
    mysqlConnection.query(`SELECT products.id as id_producto, products.name as product,
                                  colors.id as id_color, colors.name as color,
                                  presentations.id, presentations.name as presentation,
                                  sizes.id, sizes.name as size,
                                  coins.id, coins.symbol as coin,
                                  gender.id, gender.name as gender,
                                  stock.price, stock.quantity, stock.status
                           FROM stock INNER JOIN products ON stock.id_product = products.id
                                      INNER JOIN colors ON stock.id_color = colors.id
                                      INNER JOIN presentations ON stock.id_presentation = presentations.id
                                      INNER JOIN sizes ON stock.id_size = sizes.id
                                      INNER JOIN coins ON stock.id_coin = coins.id
                                      INNER JOIN gender ON stock.id_gender = gender.id`,callback);
  },

  search: function(req,id,callback){
    mysqlConnection.query(`SELECT products.id as id_producto, products.name as product,
                                  colors.id as id_color, colors.name as color,
                                  presentations.id, presentations.name as presentation,
                                  sizes.id, sizes.name as size,
                                  coins.id, coins.symbol as coin,
                                  gender.id, gender.name as gender,
                                  stock.price, stock.quantity, stock.status
                           FROM stock INNER JOIN products ON stock.id_product = products.id
                                      INNER JOIN colors ON stock.id_color = colors.id
                                      INNER JOIN presentations ON stock.id_presentation = presentations.id
                                      INNER JOIN sizes ON stock.id_size = sizes.id
                                      INNER JOIN coins ON stock.id_coin = coins.id
                                      INNER JOIN gender ON stock.id_gender = gender.id
                           WHERE stock.id =`+id, callback);
  },

  create: function(req, data, callback) {
    mysqlConnection.query(
    `INSERT INTO stock SET
       id_product = '${data.product}',
       id_color = '${data.color}',
       id_presentation = '${data.presentation}',
       id_size = '${data.size}',
       id_coin = '${data.coin}',
       id_gender = '${data.gender}',
       price = '${data.price}',
       quantity = '${data.quantity}',
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
      `UPDATE stock SET
      id_product = '${data.product}',
      id_color = '${data.color}',
      id_presentation = '${data.presentation}',
      id_size = '${data.size}',
      id_coin = '${data.coin}',
      id_gender = '${data.gender}',
      price = '${data.price}',
      quantity = '${data.quantity}',
      status = '${data.status}'
      WHERE id= ${id}`,
      callback
    );
  },

  destroy: function(con, id, callback) {
    mysqlConnection.query(`DELETE FROM stock WHERE id = ${id}`, callback);
  },


}
