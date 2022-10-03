const generate = require("./generateDb.js");
const sql_exam = require("./db.js");

// constructor
const Quest = function(quest) {
  this.questNum = quest.questNum;
  this.questDetail = quest.questDetail;
  this.questType = quest.questType;
};

Quest.getAll = result => {
  console.log("getAll")
  let query = `SELECT quest.questNum as num, quest.questDetail as detail, answer.ansDetail as answer
              FROM (quest
              INNER JOIN answer ON quest.questNum = answer.ansNum);`;
  
  generate.query(query, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    console.log("quest: ", res);
    result(null, res);
  });
};

// Exam Constructor
const Exam = function(exam) {
  this.secId = exam.secId;
  this.num = exam.num;
  this.detail = exam.detail;
  this.answer = exam.answer;
};

Exam.create = (newExam, result) => {
  console.log("Exam.create")
  console.log(newExam)
  // sql_exam.query("INSERT INTO quest SET ?", newExam, (err, res) => {
  //   if (err) {
  //     console.log("error: ", err);
  //     result(err, null);
  //     return;
  //   }

  //   console.log("created exam: ", { exam_id: res.insertId, ...newExam });
  //   result(null, { exam_id: res.insertId, ...newExam });
  // });
};

Exam.getAll = (sec_id, result) => {
  let query = `SELECT * FROM quest
              WHERE sec_id = '${sec_id}';`;

  sql_exam.query(query, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    console.log("exam: ", res);
    result(null, res);
  });
};

Exam.remove = (sec_id, result) => {
  sql_exam.query("DELETE FROM quest WHERE sec_id = ?", sec_id, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    if (res.affectedRows == 0) {
      // not found Exam with the sec_id
      result({ kind: "not_found" }, null);
      return;
    }

    console.log("deleted user with sec_id: ", sec_id);
    result(null, res);
  });
};

module.exports = { Quest, Exam };
