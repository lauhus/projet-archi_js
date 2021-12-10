const sql = require("../config/connection");
const Account = require('../models/Account');

Account.create = (newAccount, result) => {
  sql.query("INSERT INTO Accounts SET ?", newAccount, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result.status(400).json(err);
      return;
    }

    console.log("created account: ", { id: res.insertId, ...newAccount });
    result.status(200).json({ id: res.insertId, ...newAccount });
  });
};

Account.findById = (id, result) => {
  sql.query(`SELECT * FROM Accounts WHERE id = ${id.id}`, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result.json(404).json(err);
      return;
    }
    if (res.length) {
      console.log("found account: ", res[0]);
      result.status(200).json(res[0]);
      return;
    }
    result.status(400).json({ kind: "not_found" });
  });
};


Account.updateById = (id, account, result) => {
  sql.query(
    "UPDATE Accounts SET accountNumber = ?, solde = ?, customerId = ? WHERE id = ?",
    [account.accountNumber, account.solde, account.customerId, id],
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
      console.log("updated account: ", { id: id, ...account });
      result.status(200).json({ id: id, ...account });
    }
  );
};
module.exports = Account