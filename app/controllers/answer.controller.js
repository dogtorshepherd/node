const Answer = require("../models/answer.model.js");

// Retrieve all Answer from the database (with condition).
exports.findAll = (req, res) => {
  Answer.getAll((err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving answer."
      });
    else res.send(data);
  });
};
