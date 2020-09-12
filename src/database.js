const mysql = require('mysql');

const mysqlConnection = mysql.createConnection({
  host: 'localhost',
  user:'root',
  password: 'Nomadas-12',
  database:'cms-proadmin'
});
mysqlConnection.connect(function(err){
  if(err){
    console.log(err);
    return;
  }
  else{
    console.log('DB is Connected');
  }
});

module.exports = mysqlConnection;
