module.exports = app => {
  const AccountService = require('../service/AccountService')
  var router = require("express").Router();

  router.post("/", AccountService.create);

  router.get("/:id", AccountService.findById);

  router.put("/:id", AccountService.updateById);

  app.use('/api/account', router);
};