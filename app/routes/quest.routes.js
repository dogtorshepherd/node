module.exports = app => {
  const quest = require("../controllers/quest.controller.js");

  var router = require("express").Router();

  // Create a new Quest
  router.post("/", quest.create);

  // Create a new Quest Single
  router.post("/single", quest.createSingle);

  // Retrieve Quest by SecId
  router.get("/", quest.find);

  app.use('/api/quest', router);
};
