const sql_exam = require("./db.js");
const { Console } = require("console");

// constructor
const Quest = function (quest) {
  this.secId = quest.secId;
  this.question = quest.question;
  this.answer = quest.answer;
  this.score = quest.score;
};

Quest.create = (quest, result) => {
  const fs = require("fs");
  const { parse } = require("csv-parse");
  const {
    ruleForm: { score, type, level, amount },
    secId,
  } = quest;
  let insertQuest = [];
  let insertAnswer = [];
  let updateQuest = [];
  let updateAnswer = [];
  let deleteQuest = [];
  let deleteAnswer = [];
  let selectQuest = [];
  let selectAnswer = [];
  let insertQuestSelected = [];
  let insertAnswerSelected = [];
  let updateQuestSelected = [];
  let updateAnswerSelected = [];
  let deleteQuestSelected = [];
  let deleteAnswerSelected = [];
  let selectQuestSelected = [];
  let selectAnswerSelected = [];
  fs.createReadStream("app/models/q.csv")
    .pipe(parse({ delimiter: ",", from_line: 2 }))
    .on("data", function (row) {
      if (row[1].includes("INSERT")) {
        insertQuest.push(row[0]);
        insertAnswer.push(row[1]);
      } else if (row[1].includes("UPDATE")) {
        updateQuest.push(row[0]);
        updateAnswer.push(row[1]);
      } else if (row[1].includes("DELETE")) {
        deleteQuest.push(row[0]);
        deleteAnswer.push(row[1]);
      } else if (row[1].includes("SELECT")) {
        selectQuest.push(row[0]);
        selectAnswer.push(row[1]);
      }
    })
    .on("end", function () {
      for (let i = 0; i < amount; i++) {
        const randomNumForInsert = Math.floor(Math.random() * insertQuest.length)
        const randomNumForUpdate = Math.floor(Math.random() * updateQuest.length)
        const randomNumForDelete = Math.floor(Math.random() * deleteQuest.length)
        const randomNumForSelect = Math.floor(Math.random() * selectQuest.length)
        insertQuestSelected.push(insertQuest[randomNumForInsert])
        insertAnswerSelected.push(insertAnswer[randomNumForInsert])
        updateQuestSelected.push(updateQuest[randomNumForUpdate])
        updateAnswerSelected.push(updateAnswer[randomNumForUpdate])
        deleteQuestSelected.push(deleteQuest[randomNumForDelete])
        deleteAnswerSelected.push(deleteAnswer[randomNumForDelete])
        selectQuestSelected.push(selectQuest[randomNumForSelect])
        selectAnswerSelected.push(selectAnswer[randomNumForSelect])
      }
      console.log("secId : " + secId)
      console.log("level : " + level.toString())
      console.log("score : " + score)
      for (let i = 0; i < type.length; i++) {
        if(type[i] === "INSERT"){
          for (let i = 0; i < amount; i++) {
            const sec_id = secId
            const question = insertQuestSelected[i]
            const answer = insertAnswerSelected[i]
            sql_exam.query("INSERT INTO exam SET ?", {sec_id, question, answer, score}, (err, res) => {
              if (err) {
                console.log("error: ", err);
              }
              result(null, res);
              // console.log("created exam: ", { exam_id: res.insertId, ...newExam });
            });
          }
          // console.log("Have INSERT")
          // console.log("Q : " + insertQuestSelected[0])
          // console.log("A : " + insertAnswerSelected[0])
        } else if(type[i] === "UPDATE") {
          for (let i = 0; i < amount; i++) {
            const sec_id = secId
            const question = updateQuestSelected[i]
            const answer = updateAnswerSelected[i]
            sql_exam.query("INSERT INTO exam SET ?", {sec_id, question, answer, score}, (err, res) => {
              if (err) {
                console.log("error: ", err);
              }
              result(null, res);
              // console.log("created exam: ", { exam_id: res.insertId, ...newExam });
            });
          }
          // console.log("Have UPDATE")
          // console.log("Q : " + updateQuestSelected[0])
          // console.log("A : " + updateAnswerSelected[0])
        } else if(type[i] === "DELETE") {
          for (let i = 0; i < amount; i++) {
            const sec_id = secId
            const question = deleteQuestSelected[i]
            const answer = deleteAnswerSelected[i]
            sql_exam.query("INSERT INTO exam SET ?", {sec_id, question, answer, score}, (err, res) => {
              if (err) {
                console.log("error: ", err);
              }
              result(null, res);
              // console.log("created exam: ", { exam_id: res.insertId, ...newExam });
            });
          }
          // console.log("Have DELETE")
          // console.log("Q : " + deleteQuestSelected[0])
          // console.log("A : " + deleteAnswerSelected[0])
        } else if(type[i] === "SELECT") {
          for (let i = 0; i < amount; i++) {
            const sec_id = secId
            const question = selectQuestSelected[i]
            const answer = selectAnswerSelected[i]
            sql_exam.query("INSERT INTO exam SET ?", {sec_id, question, answer, score}, (err, res) => {
              if (err) {
                console.log("error: ", err);
              }
              result(null, res);
              // console.log("created exam: ", { exam_id: res.insertId, ...newExam });
            });
          }
          // console.log("Have SELECT")
          // console.log("Q : " + selectQuestSelected[0])
          // console.log("A : " + selectAnswerSelected[0])
        }
        return;
      }
    })
    .on("error", function (error) {
      console.log(error.message);
    });
};

Quest.getAll = (secId, result) => {
  // console.log("sec_id : " + secId)
  let query = `SELECT * FROM exam
              WHERE sec_id = '${secId}';`;

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

module.exports = { Quest };
