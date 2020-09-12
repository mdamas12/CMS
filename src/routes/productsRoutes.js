const express = require("express");
const productsRoutes = express.Router();
const productsController = require("../controllers/productsController");


// products routes
productsRoutes.get("/", productsController.index);
productsRoutes.get("/:id", productsController.search);
productsRoutes.post("/", productsController.create);
productsRoutes.put("/:id", productsController.update);
productsRoutes.delete("/:id", productsController.delete);



module.exports = productsRoutes;


// ALTER TABLE categories MODIFY id INTEGER NOT NULL AUTO_INCREMENT
//ALTER TABLE venta ADD FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente);
