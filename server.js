const express = require("express");
// const bodyParser = require("body-parser"); /* deprecated */
const cors = require("cors");
const multer = require('multer')
const upload = multer({ dest: 'uploads' })
const fs = require("fs");
const sqlite3 = require("sqlite3").verbose();
var es = require('event-stream');
const { parse } = require("csv-parse");
const sql = require("./app/models/db.js");

const app = express();

var corsOptions = {
  origin: "http://localhost:8081"
};

app.use(cors(corsOptions));

// parse requests of content-type - application/json
app.use(express.json()); /* bodyParser.json() is deprecated */

// parse requests of content-type - application/x-www-form-urlencoded
app.use(express.urlencoded({ extended: true })); /* bodyParser.urlencoded() is deprecated */

// simple route
app.get("/", (req, res) => {
  res.json({ message: "Welcome to bezkoder application." });
});

app.post('/upload', upload.single('file'), (req, res) => {
  const secId = req.query.sec_id
  res.json({ message: "Upload Success" });
  const bcrypt = require('bcrypt');
  const saltRounds = 10;
  let userList = []
  fs.createReadStream(req.file.path)
  .pipe(parse({ delimiter: ",", from_line: 2 }))
  .on("data", function (row) {
    const User = require("./app/models/user.model.js");
    const user = {
      user_id: row[0],
      firstname: row[1],
      lastname: row[2],
      role: "student",
      username: row[0],
      password: row[0],
      avatar: "https://icon-library.com/images/person-icon-gif/person-icon-gif-10.jpg"
    };
    userList.push(user)
  })
  .on("end", function () {
    for (const user of userList) {
      Object.keys(user).forEach(k => user[k] = user[k].trim());
      bcrypt.hash(user.password, saltRounds).then(function(hash) {
        user.password = hash
        sql.query("INSERT INTO user SET ?", user, (err, res) => {
          if (err) {
            console.log("error: ", err);
          }
          // console.log("created user: ", { user_id: res.insertId, ...user });
          let query = `INSERT INTO student (std_id, sec_id)
                        VALUES ('${user.user_id}', ${secId});`;
          sql.query(query, (err, res) => {
            if (err) {
              console.log("error: ", err);
            }
            console.log("created student");
          });
        })
      });
    }
  })
  .on("error", function (error) {
    console.log(error.message);
  });
})

app.post('/uploadExam', upload.single('file'), (req, res) => {
  if(req.file.originalname === 'generate.sql'){
    res.json({ message: "Upload Success" });
    
    const examSecId = req.query.sec_id
    const examPath = req.file.path
    const examFile = req.file
    console.log("examSecId : " + examSecId)
    console.log("examPath : " + examPath)
    console.log("examFile : " + examFile)
  
    const fs = require('fs');
    const initSqlJs = require('sql.js');
    const filebuffer = fs.readFileSync(examPath);
  
    initSqlJs().then(function(SQL){
      const db = new SQL.Database(filebuffer);
      var mysql = require('mysql');

      var con = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "][p'",
        database: "generate"
      });

      con.connect(function(err) {
        if (err) throw err;
        console.log("Connected!");
        let query = "SELECT * FROM quest";      
        con.query(query, (err, res) => {
          if (err) {
            console.log("error: ", err);
          }
          console.log(res);
          for (const quest of res){
            console.log("Num : " + quest.questNum);
            console.log("Detail : " + quest.questDetail);
          }
          con.end();
        });
      });
    });
  } else {
    res.json({ message: "Not support" });
  }
})

require("./app/routes/user.routes.js")(app);
require("./app/routes/sec.routes.js")(app);
require("./app/routes/student.routes.js")(app);

// set port, listen for requests
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);
});
