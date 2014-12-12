var express = require('express'),
    user = require('./server/routes/user.js'),
    team = require('./server/routes/team.js'),
    pg = require('pg');

var app = express();
var PORT = process.env.PORT || 5050;


app.use(express.static(__dirname));

app.get('/', function(req,res) {
  res.sendFile('/index.html', {root: __dirname});
});

app.get('/users/:id', user.getUser);
app.get('/users', user.getUsers);
app.post('/users', user.createUser);
app.get('/teams', team.getTeams);

// app.get('/db', function(req, res) {
//   pg.connect(process.env.DATABASE_URL, function(err, client, done) {
//       client.query('SELECT * FROM users', function(err, result) {
//           done();
//           if(err) {
//               console.error(err); res.send("Error " + err)
//           } else {
//               res.send(result.rows);
//           }    
//       });
//   });
    
// });





app.listen(PORT, process.env.IP,function() {
	console.log("Listening on port " + PORT);
});