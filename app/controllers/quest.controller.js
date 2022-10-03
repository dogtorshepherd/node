const { Quest, Exam } = require("../models/quest.model.js");

// Retrieve all Quest from the database (with condition).
exports.findAll = (req, res) => {
  console.log("findAll")
  Quest.getAll((err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving quest."
      });
    else res.send(data);
  });
};

// Create and Save a new Exam
exports.create = (req, res) => {
  // Validate request
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  // Create a Exam
  const exam = new Exam({
    secId: req.body.secId,
    num: req.body.num,
    detail: req.body.detail,
    answer: req.body.answer,
  });

  // Save Exam in the database
  Exam.create(exam, (err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the Exam."
      });
    else res.send(data);
  });
};

// Retrieve all Exam from the database (with condition).
exports.findExam = (req, res) => {
  const secId = req.query.secId;
  Exam.getAll(secId, (err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving exam."
      });
    else res.send(data);
  });
};

// Delete a Exam with the specified secId in the request
exports.delete = (req, res) => {
  Exam.remove(req.params.secId, (err, data) => {
    if (err) {
      if (err.kind === "not_found") {
        res.status(404).send({
          message: `Not found Exam with secId ${req.params.secId}.`
        });
      } else {
        res.status(500).send({
          message: "Could not delete Exam with secId " + req.params.secId
        });
      }
    } else res.send({ message: `Exam was deleted successfully!` });
  });
};