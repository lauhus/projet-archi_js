const Customer = require('../controller/CustomerController')
exports.create = (req, res) => {
  Customer.create(req.body, res);
};


exports.findById = (req, res) => {
  Customer.findById(req.params , res)
};


exports.updateById = (req, res) => {
  Customer.updateById(req.params , req.body , res)
};