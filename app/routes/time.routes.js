module.exports = app => {
  const time = require("../controllers/time.controller.js");

  var router = require("express").Router();

  // Create a new time
  router.post("/", time.create);

  app.use('/api/time', router);
};
