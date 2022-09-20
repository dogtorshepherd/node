const sql = require("./db.js");
// constructor
const Sec = function(sec) {
  this.sec_id = sec.sec_id;
  this.subject = sec.subject;
  this.teacher = sec.teacher;
};
Sec.getAll = (result) => {
  let query = `SELECT sec.sec_id, subject.title as subject, CONCAT(user.firstname, " ", user.lastname) as teacher
                FROM ((sec
                INNER JOIN subject ON sec.subject_id = subject.subject_id)
                INNER JOIN user ON sec.teacher_id = user.user_id);`;
  sql.query(query, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    console.log("sec: ", res);
    result(null, res);
  });
};
module.exports = Sec;