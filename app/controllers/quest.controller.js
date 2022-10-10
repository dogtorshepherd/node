const { Quest } = require("../models/quest.model.js");

// Create and Save a new Quest
exports.create = (req, res) => {
  // Validate request
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  // Create a Quest
  const quest = {
    secId: req.body.secId,
    ruleForm: req.body.ruleForm,
  };

  // Save Quest in the database
  Quest.create(quest, (err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the Quest."
      });
    else res.send(data);
  });
};

// Create and Save a new Quest Single
exports.createSingle = (req, res) => {
  // Validate request
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  // Create a Quest
  const quest = {
    question: req.body.question,
    answer: req.body.answer,
    score: req.body.score,
    sec_id: req.body.sec_id,
  };

  // Save Quest in the database
  Quest.createSingle(quest, (err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the Quest."
      });
    else res.send(data);
  });
};

// Retrieve all Quest from the database (with condition).
exports.find = (req, res) => {
  const secId = req.query.secId;
  // console.log("secId : " + secId)
  Quest.getAll(secId, (err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving quest."
      });
    else res.send(data);
  });
};