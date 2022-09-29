const sql = require("./db.js");

// constructor
const X = function(x) {
  this.x_id = x.x_id;
  this.firstname = x.firstname;
  this.lastname = x.lastname;
  this.role = x.role;
  this.xname = x.xname;
  this.password = x.password;
};

X.create = (newX, result) => {
  sql.query("INSERT INTO x SET ?", newX, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(err, null);
      return;
    }

    console.log("created x: ", { x_id: res.insertId, ...newX });
    result(null, { x_id: res.insertId, ...newX });
  });
};

X.findById = (x_id, result) => {
  sql.query(`SELECT * FROM x WHERE x_id = ${x_id}`, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(err, null);
      return;
    }

    if (res.length) {
      console.log("found x: ", res[0]);
      result(null, res[0]);
      return;
    }

    // not found X with the x_id
    result({ kind: "not_found" }, null);
  });
};

X.getAll = (role, result) => {
  let query = "SELECT * FROM x";

  if (role) {
    query += ` WHERE role LIKE '%${role}%'`;
  }

  sql.query(query, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    console.log("x: ", res);
    result(null, res);
  });
};

// X.getAllPublished = result => {
//   sql.query("SELECT * FROM x WHERE published=true", (err, res) => {
//     if (err) {
//       console.log("error: ", err);
//       result(null, err);
//       return;
//     }

//     console.log("x: ", res);
//     result(null, res);
//   });
// };

X.updateById = (x_id, x, result) => {
  sql.query(
    "UPDATE x SET firstname = ?, lastname = ?, role = ?, xname = ?, password = ? WHERE x_id = ?",
    [x.firstname, x.lastname, x.role, x.xname, x.password, x_id],
    (err, res) => {
      if (err) {
        console.log("error: ", err);
        result(null, err);
        return;
      }

      if (res.affectedRows == 0) {
        // not found X with the x_id
        result({ kind: "not_found" }, null);
        return;
      }

      console.log("updated x: ", { x_id: x_id, ...x });
      result(null, { x_id: x_id, ...x });
    }
  );
};

X.remove = (x_id, result) => {
  sql.query("DELETE FROM x WHERE x_id = ?", x_id, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    if (res.affectedRows == 0) {
      // not found X with the x_id
      result({ kind: "not_found" }, null);
      return;
    }

    console.log("deleted x with x_id: ", x_id);
    result(null, res);
  });
};

// X.removeAll = result => {
//   sql.query("DELETE FROM x", (err, res) => {
//     if (err) {
//       console.log("error: ", err);
//       result(null, err);
//       return;
//     }

//     console.log(`deleted ${res.affectedRows} x`);
//     result(null, res);
//   });
// };

module.exports = X;
