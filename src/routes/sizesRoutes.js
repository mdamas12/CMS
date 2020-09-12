const express = require("express");
const sizesRoutes = express.Router();
const sizesController = require("../controllers/sizesController");


// products routes
sizesRoutes.get("/", sizesController.index);
sizesRoutes.get("/:id", sizesController.search);
sizesRoutes.post("/", sizesController.create);
sizesRoutes.put("/:id", sizesController.update);
sizesRoutes.delete("/:id", sizesController.delete);



module.exports = sizesRoutes;
