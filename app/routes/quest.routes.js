module.exports = app => {
  const quest = require("../controllers/quest.controller.js");

  var router = require("express").Router();

  // Retrieve all Quest
  router.get("/", quest.findAll);

  // Create a new Quest
  router.post("/", quest.create);

  // Retrieve Quest by SecId
  router.get("/", quest.findExam);

  // Delete a Quest with SecId
  router.delete("/:SecId", quest.delete);

  app.use('/api/quest', router);
};
