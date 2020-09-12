const express = require("express");
const presentationsRoutes = express.Router();
const presentationsController = require("../controllers/presentationsController");


// products routes
presentationsRoutes.get("/", presentationsController.index);
presentationsRoutes.get("/:id", presentationsController.search);
presentationsRoutes.post("/", presentationsController.create);
presentationsRoutes.put("/:id", presentationsController.update);
presentationsRoutes.delete("/:id", presentationsController.delete);



module.exports = presentationsRoutes;
