const express = require("express");
const colorsRoutes = express.Router();
const colorsController = require("../controllers/colorsController");


// products routes
colorsRoutes.get("/", colorsController.index);
colorsRoutes.get("/:id", colorsController.search);
colorsRoutes.post("/", colorsController.create);
colorsRoutes.put("/:id", colorsController.update);
colorsRoutes.delete("/:id", colorsController.delete);



module.exports = colorsRoutes;
