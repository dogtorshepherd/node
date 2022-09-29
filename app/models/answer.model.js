const sql = require("./generateDb.js");

// constructor
const Answer = function(answer) {
  this.answer_id = answer.answer_id;
  this.firstname = answer.firstname;
  this.lastname = answer.lastname;
  this.role = answer.role;
  this.answername = answer.answername;
  this.password = answer.password;
};

Answer.create = (newAnswer, result) => {
  sql.query("INSERT INTO answer SET ?", newAnswer, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(err, null);
      return;
    }

    console.log("created answer: ", { answer_id: res.insertId, ...newAnswer });
    result(null, { answer_id: res.insertId, ...newAnswer });
  });
};

Answer.findById = (answer_id, result) => {
  sql.query(`SELECT * FROM answer WHERE answer_id = ${answer_id}`, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(err, null);
      return;
    }

    if (res.length) {
      console.log("found answer: ", res[0]);
      result(null, res[0]);
      return;
    }

    // not found Answer with the answer_id
    result({ kind: "not_found" }, null);
  });
};

Answer.getAll = (role, result) => {
  let query = "SELECT * FROM answer";

  if (role) {
    query += ` WHERE role LIKE '%${role}%'`;
  }

  sql.query(query, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    console.log("answer: ", res);
    result(null, res);
  });
};

// Answer.getAllPublished = result => {
//   sql.query("SELECT * FROM answer WHERE published=true", (err, res) => {
//     if (err) {
//       console.log("error: ", err);
//       result(null, err);
//       return;
//     }

//     console.log("answer: ", res);
//     result(null, res);
//   });
// };

Answer.updateById = (answer_id, answer, result) => {
  sql.query(
    "UPDATE answer SET firstname = ?, lastname = ?, role = ?, answername = ?, password = ? WHERE answer_id = ?",
    [answer.firstname, answer.lastname, answer.role, answer.answername, answer.password, answer_id],
    (err, res) => {
      if (err) {
        console.log("error: ", err);
        result(null, err);
        return;
      }

      if (res.affectedRows == 0) {
        // not found Answer with the answer_id
        result({ kind: "not_found" }, null);
        return;
      }

      console.log("updated answer: ", { answer_id: answer_id, ...answer });
      result(null, { answer_id: answer_id, ...answer });
    }
  );
};

Answer.remove = (answer_id, result) => {
  sql.query("DELETE FROM answer WHERE answer_id = ?", answer_id, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    if (res.affectedRows == 0) {
      // not found Answer with the answer_id
      result({ kind: "not_found" }, null);
      return;
    }

    console.log("deleted answer with answer_id: ", answer_id);
    result(null, res);
  });
};

// Answer.removeAll = result => {
//   sql.query("DELETE FROM answer", (err, res) => {
//     if (err) {
//       console.log("error: ", err);
//       result(null, err);
//       return;
//     }

//     console.log(`deleted ${res.affectedRows} answer`);
//     result(null, res);
//   });
// };

module.eanswerports = Answer;
