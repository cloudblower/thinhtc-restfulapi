const { ErrorResponse } = require("../utils/errorResponse");

exports.errorHandler = (err, req, res, next) => {
  // Log error details to the console for development
  console.error(err.message.red);
  console.error(err.stack.red);

  const statusCode = err.statusCode || 500;
  const message =
    err instanceof ErrorResponse ? err.message : "Internal Server Error";

  res.status(statusCode).json({ statusCode, message });
};
