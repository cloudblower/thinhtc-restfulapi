const express = require("express");
const router = express.Router();
const {
  getProducts,
  getProductByID,
  createProduct,
  updateProduct,
  deleteProduct,
} = require("../controllers/products");

router.get("/products", getProducts);
router.get("/products/:id", getProductByID);
router.post("/products", createProduct);
router.put("/products/:id", updateProduct);
router.delete("/products/:id", deleteProduct);

module.exports = router;
