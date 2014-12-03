var express = require('express');
var user = require('./server/routes/user.js');
var team = require('./server/routes/team.js');

var app = express();
var PORT = process.env.PORT || 5050;

app.use(express.static(__dirname));

app.get('/', function(req,res) {
  res.sendFile('/index.html', {root: __dirname});
});
app.get('/users/:userId', user.getUser);
app.get('/users', user.getUsers);
app.post('/users', user.createUser);

app.get('/teams', team.getTeams);

app.listen(PORT, process.env.IP,function() {
	console.log("Listening on port " + PORT);
});