const Customer = require('../controller/CustomerController')
exports.create = (req, res) => {
  Customer.create(req.body, res);
};


exports.findById = (req, res) => {
  console.log(req.params.id)
  Customer.findById(req.params , res)
};


exports.updateById = (req, res) => {
  Customer.updateById(req.params , req.body , res)
};