const Product = require("../models/Product");
const { Op } = require("sequelize");
const asyncHandler = require("../middlewares/asyncHandler");
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
