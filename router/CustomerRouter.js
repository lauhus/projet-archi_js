module.exports = app => {
  const Customer = require("../controller/CustomerController");
  const CustomerService = require('../service/CustomerService')
  var router = require("express").Router();

  router.post("/", CustomerService.create);

  router.get("/:id", CustomerService.findById);

  router.put("/:id", CustomerService.updateById);

  app.use('/api/customer', router);
};