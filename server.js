const express = require("express");
const cors = require("cors");

const app = express();

app.use(cors());

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

require("./router/CustomerRouter")(app);
require("./router/AccountRouter")(app);

module.exports = app;