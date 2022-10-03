module.exports = app => {
  const answer = require("../controllers/answer.controller.js");

  var router = require("express").Router();

  // Retrieve all Answer
  router.get("/", answer.findAll);

  app.use('/api/answer', router);
};
