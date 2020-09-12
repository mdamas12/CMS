const express = require("express");
const brandsRoutes = express.Router();
const brandsController = require("../controllers/brandsController");


// products routes
brandsRoutes.get("/", brandsController.index);
brandsRoutes.get("/:id", brandsController.search);
brandsRoutes.post("/", brandsController.create);
brandsRoutes.put("/:id", brandsController.update);
brandsRoutes.delete("/:id", brandsController.delete);



module.exports = brandsRoutes;
