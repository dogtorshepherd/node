const { Time } = require("../models/time.model.js");

// Create and Save a new Time
exports.create = (req, res) => {
  // Validate request
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  // Create a Time
  const time = {
    time: req.body.time,
    sec_id: req.body.sec_id,
  };

  // Save Time in the database
  Time.create(time, (err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the Time."
      });
    else res.send(data);
  });
};