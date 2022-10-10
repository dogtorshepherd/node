module.exports = app => {
  const student = require("../controllers/student.controller.js");

  var router = require("express").Router();

  // Retrieve all Student
  router.get("/", student.findAll);

  // Retrieve all Student and score
  router.get("/score", student.findAllScore);

  // Delete all Student
  router.delete("/", student.deleteAll);

  app.use('/api/student', router);
};
