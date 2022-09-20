module.exports = app => {
  const student = require("../controllers/student.controller.js");

  var router = require("express").Router();

  // Create a new Student
  router.post("/", student.create);

  // Retrieve all Student
  router.get("/", student.findAll);

  // Delete all Student
  router.delete("/", student.deleteAll);

  app.use('/api/student', router);
};
