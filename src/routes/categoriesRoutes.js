const express = require("express");
const categoriesRoutes = express.Router();
const categoriesController = require("../controllers/categoriesController");


// products routes
categoriesRoutes.get("/", categoriesController.index);
categoriesRoutes.get("/:id", categoriesController.search);
categoriesRoutes.post("/", categoriesController.create);
categoriesRoutes.put("/:id", categoriesController.update);
categoriesRoutes.delete("/:id", categoriesController.delete);



module.exports = categoriesRoutes;


// ALTER TABLE categories MODIFY id INTEGER NOT NULL AUTO_INCREMENT
