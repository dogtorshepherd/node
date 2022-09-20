module.exports = app => {
  const sec = require("../controllers/sec.controller.js");

  var router = require("express").Router();

  // Retrieve all Sec
  router.get("/", sec.findAll);
  
  app.use('/api/sec', router);
};
