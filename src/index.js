const express = require('express');
const app = express();
const router = require('./routes');
const bodyParser = require('body-parser');
// const methodOverride = require('method-override');


//Settings
app.set('port', process.env.port || 3000);

// Middlewares
 app.use(bodyParser.json());


// Routes
 app.use(router);


//starting the server
app.listen(app.get('port'), () => {
  console.log('CMS', app.get('port'));

});
