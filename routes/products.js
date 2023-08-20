const express = require("express");
const router = express.Router();
const { getProducts, getProductByID } = require("../controllers/products");

router.get("/products", getProducts);
router.get("/products/:id", getProductByID);

module.exports = router;
