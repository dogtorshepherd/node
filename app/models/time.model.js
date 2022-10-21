const sql_exam = require("./db.js");
const { Console } = require("console");

// constructor
const Time = function (time) {
  this.secId = time.secId;
  this.time = time.time;
};

Time.create = (_time, result) => {
  const {
    time,
    sec_id,
  } = _time;
  console.log("time : " + time)
  console.log("sec_id : " + sec_id)
  sql_exam.query("UPDATE sec SET start = ?, end = ? WHERE sec_id = ?",
  [time[0], time[1], sec_id], (err, res) => {
    if (err) {
      console.log("error: ", err);
    }
  });
};

module.exports = { Time };
