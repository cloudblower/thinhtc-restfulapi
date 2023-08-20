const { DataTypes } = require("sequelize");
const sequelize = require("../utils/database");
const Product = sequelize.define(
  "Product",
  {
    ProductID: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
      allowNull: false,
    },
    ProductName: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    Price: {
      type: DataTypes.DECIMAL,
      allowNull: false,
    },
    CategoryID: {
      type: DataTypes.DECIMAL,
    },
    DeleteFlg: {
      type: DataTypes.TINYINT,
    },
  },
  { timestamps: false }
);

module.exports = Product;
