const { Router } = require('express'); // llamo solo router de express
const products_routes = require('./productsRoutes');
const categories_routes = require('./categoriesRoutes');
const brands_routes = require('./brandsRoutes');
const sizes_routes = require('./sizesRoutes');
const colors_routes = require('./colorsRoutes');
const presentations_routes = require('./presentationsRoutes');
const stock_routes = require('./stockRoutes');

const router = Router(); //instanciar Router


router.get('/',(req,res) => res.send('CSM Admin Pro'));
router.use('/products', products_routes);
router.use('/categories', categories_routes);
router.use('/brands', brands_routes);
router.use('/sizes', sizes_routes);
router.use('/colors', colors_routes);
router.use('/presentations', presentations_routes);
router.use('/stock', stock_routes);


module.exports = router;
