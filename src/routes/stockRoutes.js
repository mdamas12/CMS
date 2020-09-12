const express = require("express");
const stockRoutes = express.Router();
const stockController = require("../controllers/stockController");


// products routes
stockRoutes.get("/", stockController.index);
stockRoutes.get("/:id", stockController.search);
stockRoutes.post("/", stockController.create);
stockRoutes.put("/:id", stockController.update);
stockRoutes.delete("/:id", stockController.delete);



module.exports = stockRoutes;
