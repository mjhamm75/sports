var data = require('./../mock-data/team.js');

var team = {
	getTeam: function(req, res) {
		res.send(data.team);
	},
	getTeams: function(req, res) {
		res.send(data.teams);
	},
	createTeam: function(req, res) {
		res.send('createTeam');
	}
};

module.exports = team;