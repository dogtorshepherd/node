module.exports = app => {
  const sec = require("../controllers/sec.controller.js");

  var router = require("express").Router();

  // Retrieve all Sec
  router.get("/", sec.findAll);
  router.get("/student", sec.findByStudentId);
  router.get("/:teacherId", sec.findByTeacherId);
  app.use('/api/sec', router);
};
