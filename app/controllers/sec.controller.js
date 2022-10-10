const Sec = require("../models/sec.model.js");

// Retrieve all Secs from the database.
exports.findAll = (req, res) => {
  Sec.getAll((err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving sec."
      });
    else res.send(data);
  });
};

exports.findByTeacherId = (req, res) => {
  console.log("findByTeacherId")
  Sec.getByTeacherId(req.query.teacherId, (err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving sec."
      });
    else res.send(data);
  });
};

exports.findByStudentId = (req, res) => {
  console.log("findByStudentId")
  Sec.getByStudentId(req.query.studentId, (err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving sec."
      });
    else res.send(data);
  });
};