const express = require("express");
const dotenv = require("dotenv");
const morgan = require("morgan");
const colors = require("colors");
const { errorHandler } = require("./middlewares/errorHandler");

// Import .env configs
dotenv.config({ path: ".env" });

const app = express();

// Body parser
app.use(express.json());

//HTTP Request Logs
if (process.env.NODE_ENV === "development") {
  app.use(morgan("dev"));
}

// Route files
const products = require("./routes/products");

// Mount routers
app.use("/api/v1", products);

const PORT = process.env.PORT || 8080;

app.use(errorHandler);

const server = app.listen(
  PORT,
  console.log(
    `Server running in ${process.env.NODE_ENV} mode on port ${PORT}`.yellow.bold
  )
);
