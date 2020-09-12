
const mysqlConnection = require('../database');
module.exports = {

  get: function(req, callback){
    mysqlConnection.query('SELECT * FROM presentations',callback);
  },

  search: function(req,id,callback){
    mysqlConnection.query('SELECT * FROM presentations WHERE id='+id, callback);
  },

  create: function(req, data, callback) {
    mysqlConnection.query(
    `INSERT INTO presentations SET
       name = '${data.name}',
       description = '${data.description}',
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
      `UPDATE presentations SET
      name = '${data.name}',
      description = '${data.description}',
      status = '${data.status}'
      WHERE id= ${id}`,
      callback
    );
  },

  destroy: function(con, id, callback) {
    mysqlConnection.query(`DELETE FROM presentations WHERE id = ${id}`, callback);
  }

}
