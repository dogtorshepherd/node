const sql = require("./db.js");

// constructor
const Student = function(student) {
  this.id = student.id;
  this.name = student.name;
};

Student.create = (newStudent, result) => {
  sql.query("INSERT INTO student SET ?", newStudent, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(err, null);
      return;
    }

    console.log("created student: ", { student_id: res.insertId, ...newStudent });
    result(null, { student_id: res.insertId, ...newStudent });
  });
};

Student.getAll = (sec_id, result) => {
  let query = `SELECT student.std_id as id, CONCAT(user.firstname, " ", user.lastname) as name
              FROM (student
              INNER JOIN user ON student.std_id = user.user_id)
              WHERE sec_id = '${sec_id}';`;

  sql.query(query, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    console.log("student: ", res);
    result(null, res);
  });
};

Student.getAllScore = (sec_id, result) => {
  console.log("getAllScore")
  console.log("sec_id : " + sec_id)
  let query = `SELECT student.std_id as id, CONCAT(user.firstname, " ", user.lastname) as name, COALESCE(SUM(score.score), 0) AS score
  FROM (student
  INNER JOIN user ON student.std_id = user.user_id
  LEFT JOIN score ON student.std_id = score.std_id)
  WHERE sec_id = ${sec_id}
  GROUP BY student.std_id;`;

  sql.query(query, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    console.log("student: ", res);
    result(null, res);
  });
};

Student.removeAll = (sec_id, result) => {
  sql.query(`DELETE FROM student WHERE student.sec_id = '${sec_id}'`, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    console.log(`deleted ${res.affectedRows} student`);
    result(null, res);
  });
};

module.exports = Student;
