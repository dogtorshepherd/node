const mysql = require("mysql");

var connection = mysql.createPool({
  host: "localhost",
  user: "root",
  password: "][p'",
  database: "generate"
});

module.exports = connection;
