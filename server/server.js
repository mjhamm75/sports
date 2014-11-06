var express = require('express');
var user = require('./routes/user.js');

var app = express();
var PORT = 9000;

app.get('/users/:userId', user.getUser);
app.get('/users', user.getUsers);
app.post('/users', user.createUser);

app.listen(PORT, function() {
	console.log("Listening on port " + PORT);
});