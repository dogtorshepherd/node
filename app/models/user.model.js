const sql = require("./db.js");

// constructor
const User = function(user) {
  this.user_id = user.user_id;
  this.firstname = user.firstname;
  this.lastname = user.lastname;
  this.role = user.role;
  this.username = user.username;
  this.password = user.password;
};

User.create = (newUser, result) => {
  sql.query("INSERT INTO user SET ?", newUser, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(err, null);
      return;
    }

    console.log("created user: ", { user_id: res.insertId, ...newUser });
    result(null, { user_id: res.insertId, ...newUser });
  });
};

User.findById = (user_id, result) => {
  sql.query(`SELECT * FROM user WHERE user_id = ${user_id}`, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(err, null);
      return;
    }

    if (res.length) {
      console.log("found user: ", res[0]);
      result(null, res[0]);
      return;
    }

    // not found User with the user_id
    result({ kind: "not_found" }, null);
  });
};

User.getAll = (role, result) => {
  let query = "SELECT * FROM user";

  if (role) {
    query += ` WHERE role LIKE '%${role}%'`;
  }

  sql.query(query, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    console.log("user: ", res);
    result(null, res);
  });
};

// User.getAllPublished = result => {
//   sql.query("SELECT * FROM user WHERE published=true", (err, res) => {
//     if (err) {
//       console.log("error: ", err);
//       result(null, err);
//       return;
//     }

//     console.log("user: ", res);
//     result(null, res);
//   });
// };

User.updateById = (user_id, user, result) => {
  sql.query(
    "UPDATE user SET firstname = ?, lastname = ?, role = ?, username = ?, password = ? WHERE user_id = ?",
    [user.firstname, user.lastname, user.role, user.username, user.password, user_id],
    (err, res) => {
      if (err) {
        console.log("error: ", err);
        result(null, err);
        return;
      }

      if (res.affectedRows == 0) {
        // not found User with the user_id
        result({ kind: "not_found" }, null);
        return;
      }

      console.log("updated user: ", { user_id: user_id, ...user });
      result(null, { user_id: user_id, ...user });
    }
  );
};

User.remove = (user_id, result) => {
  sql.query("DELETE FROM user WHERE user_id = ?", user_id, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    if (res.affectedRows == 0) {
      // not found User with the user_id
      result({ kind: "not_found" }, null);
      return;
    }

    console.log("deleted user with user_id: ", user_id);
    result(null, res);
  });
};

// User.removeAll = result => {
//   sql.query("DELETE FROM user", (err, res) => {
//     if (err) {
//       console.log("error: ", err);
//       result(null, err);
//       return;
//     }

//     console.log(`deleted ${res.affectedRows} user`);
//     result(null, res);
//   });
// };

module.exports = User;
