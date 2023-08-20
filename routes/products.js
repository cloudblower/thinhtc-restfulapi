const express = require("express");
const router = express.Router();
const {
  getProducts,
  getProductByID,
  createProduct,
} = require("../controllers/products");

router.get("/products", getProducts);
router.get("/products/:id", getProductByID);
router.post("/products", createProduct);
module.exports = router;
