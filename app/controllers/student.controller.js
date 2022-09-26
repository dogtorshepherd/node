const multer = require('multer')
const upload = multer({ dest: 'uploads' })

const Student = require("../models/student.model.js");

// Create and Save a new Student
exports.create = (req, res) => {
  // Validate request
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }
  res.send("5555")
};

// Retrieve all Student from the database (with condition).
exports.findAll = (req, res) => {
  // Validate request
  if (!req.query.sec_id) {
    res.status(400).send({
      message: "Please request with sec_id"
    });
  }
  const sec_id = req.query.sec_id;
  Student.getAll(sec_id, (err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving student."
      });
    else res.send(data);
  });
};

// Delete all Student from the database.
exports.deleteAll = (req, res) => {
  // Validate request
  if (!req.query.sec_id) {
    res.status(400).send({
      message: "Please request with sec_id"
    });
  }
  const sec_id = req.query.sec_id;
  Student.removeAll(sec_id, (err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while removing all student."
      });
    else res.send({ message: `All Student were deleted successfully!` });
  });
};