const sql = require("../config/connection");
const Customer = require('../models/Customer');

Customer.create = (newCustomer, result) => {
  sql.query("INSERT INTO Customers SET ?", newCustomer, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result.status(400).json(err);
      return;
    }

    console.log("created customer: ", { id: res.insertId, ...newCustomer });
    result.status(200).json({ id: res.insertId, ...newCustomer });
  });
};

Customer.findById = (id, result) => {
  sql.query(`SELECT * FROM Customers WHERE id = ${id.id}`, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result.json(404).json(err);
      return;
    }
    if (res.length) {
      console.log("found customer: ", res[0]);
      result.status(200).json(res[0]);
      return;
    }
    result.status(400).json({ kind: "not_found" });
  });
};


Customer.updateById = (id, customer, result) => {
  sql.query(
    "UPDATE Customers SET customerNumber = ?, address = ?, nom = ? WHERE id = ?",
    [customer.customerNumber, customer.address, customer.nom, id],
    (err, res) => {
      if (err) {
        console.log("error: ", err);
        result.status(404).json(err);
        return;
      }

      if (res.affectedRows == 0) {
        result.status(404).json({ kind: "not_found" });
        return;
      }
      console.log("updated customer: ", { id: id, ...customer });
      result.status(200).json({ id: id, ...customer });
    }
  );
};
 module.exports = Customer