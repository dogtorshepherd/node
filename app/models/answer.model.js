const sql = require("./generateDb.js");

// constructor
const Answer = function(answer) {
  this.answerNum = answer.answerNum;
  this.answerDetail = answer.answerDetail;
};

Answer.getAll = result => {
  let query = "SELECT * FROM answer";
  
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

module.exports = Answer;
