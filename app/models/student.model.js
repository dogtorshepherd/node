const sql = require("./db.js");

// constructor
const Student = function(student) {
  this.student_id = student.student_id;
  this.firstname = student.firstname;
  this.lastname = student.lastname;
  this.role = student.role;
  this.studentname = student.studentname;
  this.password = student.password;
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

Student.findById = (student_id, result) => {
  sql.query(`SELECT * FROM student WHERE student_id = ${student_id}`, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(err, null);
      return;
    }

    if (res.length) {
      console.log("found student: ", res[0]);
      result(null, res[0]);
      return;
    }

    // not found Student with the student_id
    result({ kind: "not_found" }, null);
  });
};

Student.getAll = (role, result) => {
  let query = "SELECT * FROM student";

  if (role) {
    query += ` WHERE role LIKE '%${role}%'`;
  }

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

// Student.getAllPublished = result => {
//   sql.query("SELECT * FROM student WHERE published=true", (err, res) => {
//     if (err) {
//       console.log("error: ", err);
//       result(null, err);
//       return;
//     }

//     console.log("student: ", res);
//     result(null, res);
//   });
// };

Student.updateById = (student_id, student, result) => {
  sql.query(
    "UPDATE student SET firstname = ?, lastname = ?, role = ?, studentname = ?, password = ? WHERE student_id = ?",
    [student.firstname, student.lastname, student.role, student.studentname, student.password, student_id],
    (err, res) => {
      if (err) {
        console.log("error: ", err);
        result(null, err);
        return;
      }

      if (res.affectedRows == 0) {
        // not found Student with the student_id
        result({ kind: "not_found" }, null);
        return;
      }

      console.log("updated student: ", { student_id: student_id, ...student });
      result(null, { student_id: student_id, ...student });
    }
  );
};

Student.remove = (student_id, result) => {
  sql.query("DELETE FROM student WHERE student_id = ?", student_id, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    if (res.affectedRows == 0) {
      // not found Student with the student_id
      result({ kind: "not_found" }, null);
      return;
    }

    console.log("deleted student with student_id: ", student_id);
    result(null, res);
  });
};

// Student.removeAll = result => {
//   sql.query("DELETE FROM student", (err, res) => {
//     if (err) {
//       console.log("error: ", err);
//       result(null, err);
//       return;
//     }

//     console.log(`deleted ${res.affectedRows} student`);
//     result(null, res);
//   });
// };

module.exports = Student;
