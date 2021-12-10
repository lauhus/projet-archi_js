const Account = require('../controller/AccountController');
exports.create = (req, res) => {
  Account.create(req.body, res);
};


exports.findById = (req, res) => {
  Account.findById(req.params , res)
};


exports.updateById = (req, res) => {
  Account.updateById(req.params , req.body , res)
};