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
    ruleForm: { check, type, level1, level2, level3, level4 },
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
      if (type == "INSERT") {
        if (level1.amount > 0) {
          for (let i = 0; i < level1.amount; i++) {
            const randomNumForInsert = Math.floor(
              Math.random() * insertQuest.length
            );
            insertQuestSelected.push(insertQuest[randomNumForInsert]);
            insertAnswerSelected.push(insertAnswer[randomNumForInsert]);
          }
          for (let i = 0; i < level1.amount; i++) {
            const sec_id = secId;
            const question = insertQuestSelected[i];
            const answer = insertAnswerSelected[i];
            const score = level1.score;
            sql_exam.query(
              "INSERT INTO exam SET ?",
              { sec_id, question, answer, score },
              (err, res) => {
                if (err) {
                  console.log("error: ", err);
                }
              }
            );
          }
        }
        if (level2.amount > 0) {
          for (let i = 0; i < level2.amount; i++) {
            const randomNumForInsert = Math.floor(
              Math.random() * insertQuest.length
            );
            insertQuestSelected.push(insertQuest[randomNumForInsert]);
            insertAnswerSelected.push(insertAnswer[randomNumForInsert]);
          }
          for (let i = 0; i < level2.amount; i++) {
            const sec_id = secId;
            const question = insertQuestSelected[i];
            const answer = insertAnswerSelected[i];
            const score = level2.score;
            sql_exam.query(
              "INSERT INTO exam SET ?",
              { sec_id, question, answer, score },
              (err, res) => {
                if (err) {
                  console.log("error: ", err);
                }
              }
            );
          }
        }
        if (level3.amount > 0) {
          for (let i = 0; i < level3.amount; i++) {
            const randomNumForInsert = Math.floor(
              Math.random() * insertQuest.length
            );
            insertQuestSelected.push(insertQuest[randomNumForInsert]);
            insertAnswerSelected.push(insertAnswer[randomNumForInsert]);
          }
          for (let i = 0; i < level3.amount; i++) {
            const sec_id = secId;
            const question = insertQuestSelected[i];
            const answer = insertAnswerSelected[i];
            const score = level3.score;
            sql_exam.query(
              "INSERT INTO exam SET ?",
              { sec_id, question, answer, score },
              (err, res) => {
                if (err) {
                  console.log("error: ", err);
                }
              }
            );
          }
        }
        if (level4.amount > 0) {
          for (let i = 0; i < level4.amount; i++) {
            const randomNumForInsert = Math.floor(
              Math.random() * insertQuest.length
            );
            insertQuestSelected.push(insertQuest[randomNumForInsert]);
            insertAnswerSelected.push(insertAnswer[randomNumForInsert]);
          }
          for (let i = 0; i < level4.amount; i++) {
            const sec_id = secId;
            const question = insertQuestSelected[i];
            const answer = insertAnswerSelected[i];
            const score = level4.score;
            sql_exam.query(
              "INSERT INTO exam SET ?",
              { sec_id, question, answer, score },
              (err, res) => {
                if (err) {
                  console.log("error: ", err);
                }
              }
            );
          }
        }
      } else if (type == "UPDATE") {
        if (level1.amount > 0) {
          for (let i = 0; i < level1.amount; i++) {
            const randomNumForUpdate = Math.floor(
              Math.random() * updateQuest.length
            );
            updateQuestSelected.push(updateQuest[randomNumForUpdate]);
            updateAnswerSelected.push(updateAnswer[randomNumForUpdate]);
          }
          for (let i = 0; i < level1.amount; i++) {
            const sec_id = secId;
            const question = updateQuestSelected[i];
            const answer = updateAnswerSelected[i];
            const score = level1.score;
            sql_exam.query(
              "INSERT INTO exam SET ?",
              { sec_id, question, answer, score },
              (err, res) => {
                if (err) {
                  console.log("error: ", err);
                }
              }
            );
          }
        }
        if (level2.amount > 0) {
          for (let i = 0; i < level2.amount; i++) {
            const randomNumForUpdate = Math.floor(
              Math.random() * updateQuest.length
            );
            updateQuestSelected.push(updateQuest[randomNumForUpdate]);
            updateAnswerSelected.push(updateAnswer[randomNumForUpdate]);
          }
          for (let i = 0; i < level2.amount; i++) {
            const sec_id = secId;
            const question = updateQuestSelected[i];
            const answer = updateAnswerSelected[i];
            const score = level2.score;
            sql_exam.query(
              "INSERT INTO exam SET ?",
              { sec_id, question, answer, score },
              (err, res) => {
                if (err) {
                  console.log("error: ", err);
                }
              }
            );
          }
        }
        if (level3.amount > 0) {
          for (let i = 0; i < level3.amount; i++) {
            const randomNumForUpdate = Math.floor(
              Math.random() * updateQuest.length
            );
            updateQuestSelected.push(updateQuest[randomNumForUpdate]);
            updateAnswerSelected.push(updateAnswer[randomNumForUpdate]);
          }
          for (let i = 0; i < level3.amount; i++) {
            const sec_id = secId;
            const question = updateQuestSelected[i];
            const answer = updateAnswerSelected[i];
            const score = level3.score;
            sql_exam.query(
              "INSERT INTO exam SET ?",
              { sec_id, question, answer, score },
              (err, res) => {
                if (err) {
                  console.log("error: ", err);
                }
              }
            );
          }
        }
        if (level4.amount > 0) {
          for (let i = 0; i < level4.amount; i++) {
            const randomNumForUpdate = Math.floor(
              Math.random() * updateQuest.length
            );
            updateQuestSelected.push(updateQuest[randomNumForUpdate]);
            updateAnswerSelected.push(updateAnswer[randomNumForUpdate]);
          }
          for (let i = 0; i < level4.amount; i++) {
            const sec_id = secId;
            const question = updateQuestSelected[i];
            const answer = updateAnswerSelected[i];
            const score = level4.score;
            sql_exam.query(
              "INSERT INTO exam SET ?",
              { sec_id, question, answer, score },
              (err, res) => {
                if (err) {
                  console.log("error: ", err);
                }
              }
            );
          }
        }
      } else if (type == "DELETE") {
        if (level1.amount > 0) {
          for (let i = 0; i < level1.amount; i++) {
            const randomNumForDelete = Math.floor(
              Math.random() * deleteQuest.length
            );
            deleteQuestSelected.push(deleteQuest[randomNumForDelete]);
            deleteAnswerSelected.push(deleteAnswer[randomNumForDelete]);
          }
          for (let i = 0; i < level1.amount; i++) {
            const sec_id = secId;
            const question = deleteQuestSelected[i];
            const answer = deleteAnswerSelected[i];
            const score = level1.score;
            sql_exam.query(
              "INSERT INTO exam SET ?",
              { sec_id, question, answer, score },
              (err, res) => {
                if (err) {
                  console.log("error: ", err);
                }
              }
            );
          }
        }
        if (level2.amount > 0) {
          for (let i = 0; i < level2.amount; i++) {
            const randomNumForDelete = Math.floor(
              Math.random() * deleteQuest.length
            );
            deleteQuestSelected.push(deleteQuest[randomNumForDelete]);
            deleteAnswerSelected.push(deleteAnswer[randomNumForDelete]);
          }
          for (let i = 0; i < level2.amount; i++) {
            const sec_id = secId;
            const question = deleteQuestSelected[i];
            const answer = deleteAnswerSelected[i];
            const score = level2.score;
            sql_exam.query(
              "INSERT INTO exam SET ?",
              { sec_id, question, answer, score },
              (err, res) => {
                if (err) {
                  console.log("error: ", err);
                }
              }
            );
          }
        }
        if (level3.amount > 0) {
          for (let i = 0; i < level3.amount; i++) {
            const randomNumForDelete = Math.floor(
              Math.random() * deleteQuest.length
            );
            deleteQuestSelected.push(deleteQuest[randomNumForDelete]);
            deleteAnswerSelected.push(deleteAnswer[randomNumForDelete]);
          }
          for (let i = 0; i < level3.amount; i++) {
            const sec_id = secId;
            const question = deleteQuestSelected[i];
            const answer = deleteAnswerSelected[i];
            const score = level3.score;
            sql_exam.query(
              "INSERT INTO exam SET ?",
              { sec_id, question, answer, score },
              (err, res) => {
                if (err) {
                  console.log("error: ", err);
                }
              }
            );
          }
        }
        if (level4.amount > 0) {
          for (let i = 0; i < level4.amount; i++) {
            const randomNumForDelete = Math.floor(
              Math.random() * deleteQuest.length
            );
            deleteQuestSelected.push(deleteQuest[randomNumForDelete]);
            deleteAnswerSelected.push(deleteAnswer[randomNumForDelete]);
          }
          for (let i = 0; i < level4.amount; i++) {
            const sec_id = secId;
            const question = deleteQuestSelected[i];
            const answer = deleteAnswerSelected[i];
            const score = level4.score;
            sql_exam.query(
              "INSERT INTO exam SET ?",
              { sec_id, question, answer, score },
              (err, res) => {
                if (err) {
                  console.log("error: ", err);
                }
              }
            );
          }
        }
      } else if (type == "SELECT") {
        if (level1.amount > 0) {
          for (let i = 0; i < level1.amount; i++) {
            const randomNumForSelect = Math.floor(
              Math.random() * selectQuest.length
            );
            selectQuestSelected.push(selectQuest[randomNumForSelect]);
            selectAnswerSelected.push(selectAnswer[randomNumForSelect]);
          }
          for (let i = 0; i < level1.amount; i++) {
            const sec_id = secId;
            const question = selectQuestSelected[i];
            const answer = selectAnswerSelected[i];
            const score = level1.score;
            sql_exam.query(
              "INSERT INTO exam SET ?",
              { sec_id, question, answer, score },
              (err, res) => {
                if (err) {
                  console.log("error: ", err);
                }
              }
            );
          }
        }
        if (level2.amount > 0) {
          for (let i = 0; i < level2.amount; i++) {
            const randomNumForSelect = Math.floor(
              Math.random() * selectQuest.length
            );
            selectQuestSelected.push(selectQuest[randomNumForSelect]);
            selectAnswerSelected.push(selectAnswer[randomNumForSelect]);
          }
          for (let i = 0; i < level2.amount; i++) {
            const sec_id = secId;
            const question = selectQuestSelected[i];
            const answer = selectAnswerSelected[i];
            const score = level2.score;
            sql_exam.query(
              "INSERT INTO exam SET ?",
              { sec_id, question, answer, score },
              (err, res) => {
                if (err) {
                  console.log("error: ", err);
                }
              }
            );
          }
        }
        if (level3.amount > 0) {
          for (let i = 0; i < level3.amount; i++) {
            const randomNumForSelect = Math.floor(
              Math.random() * selectQuest.length
            );
            selectQuestSelected.push(selectQuest[randomNumForSelect]);
            selectAnswerSelected.push(selectAnswer[randomNumForSelect]);
          }
          for (let i = 0; i < level3.amount; i++) {
            const sec_id = secId;
            const question = selectQuestSelected[i];
            const answer = selectAnswerSelected[i];
            const score = level3.score;
            sql_exam.query(
              "INSERT INTO exam SET ?",
              { sec_id, question, answer, score },
              (err, res) => {
                if (err) {
                  console.log("error: ", err);
                }
              }
            );
          }
        }
        if (level4.amount > 0) {
          for (let i = 0; i < level4.amount; i++) {
            const randomNumForSelect = Math.floor(
              Math.random() * selectQuest.length
            );
            selectQuestSelected.push(selectQuest[randomNumForSelect]);
            selectAnswerSelected.push(selectAnswer[randomNumForSelect]);
          }
          for (let i = 0; i < level4.amount; i++) {
            const sec_id = secId;
            const question = selectQuestSelected[i];
            const answer = selectAnswerSelected[i];
            const score = level4.score;
            sql_exam.query(
              "INSERT INTO exam SET ?",
              { sec_id, question, answer, score },
              (err, res) => {
                if (err) {
                  console.log("error: ", err);
                }
              }
            );
          }
        }
      }
      result(null, { RESULT: "OK" });
      return;
    })
    .on("error", function (error) {
      console.log(error.message);
    });
};

Quest.createSingle = (quest, result) => {
  const { question, answer, score, sec_id } = quest;
  sql_exam.query(
    "INSERT INTO exam SET ?",
    { sec_id, question, answer, score },
    (err, res) => {
      if (err) {
        console.log("error: ", err);
      }
      result(null, res);
      return;
    }
  );
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
