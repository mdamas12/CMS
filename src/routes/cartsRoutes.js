const express = require("express");
const cartsRoutes = express.Router();
const cartsController = require("../controllers/cartsController");


// shoppingcart routes
cartsRoutes.get("/", cartsController.index);
cartsRoutes.get("/:id", cartsController.search);
cartsRoutes.post("/", cartsController.create);
cartsRoutes.put("/:id", cartsController.update);
cartsRoutes.delete("/:id", cartsController.delete);



module.exports = cartsRoutes;