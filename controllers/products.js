const Product = require("../models/Product");
const { Op } = require("sequelize");
const asyncHandler = require("../middlewares/asyncHandler");
const ErrorResponse = require("../utils/errorResponse");
module.exports.getProducts = asyncHandler(async (req, res, next) => {
  const { page = 1, limit = 5, q = "", sort = "ProductID:asc" } = req.query;

  const offset = (page - 1) * limit;

  const [sortField, sortOrder] = sort.split(":");
  const order = [[sortField, sortOrder]];

  const where = {
    [Op.or]: [
      {
        ProductName: {
          [Op.like]: `%${q}%`,
        },
      },
    ],
  };

  const { count, rows: products } = await Product.findAndCountAll({
    where,
    order,
    limit: parseInt(limit),
    offset: parseInt(offset),
  });

  const totalPages = Math.ceil(count / limit);
  res.json({
    statusCode: res.statusCode,
    products,
    currentPage: parseInt(page),
    totalPages,
    totalItems: count,
  });
});

module.exports.getProductByID = asyncHandler(async (req, res, next) => {
  const productId = req.params.id;
  const product = await Product.findByPk(productId);
  console.log(product);
  if (!product) {
    return next(new ErrorResponse("Product not found", 404));
  }

  res.json({ statusCode: res.statusCode, product });
});

module.exports.createProduct = asyncHandler(async (req, res, next) => {
  const { ProductName, Price, CategoryID } = req.body;

  const newProduct = await Product.create({
    ProductName,
    Price,
    CategoryID,
  });

  res.status(201).json({ statusCode: res.statusCode, newProduct });
});
