var data = require('./../mock-data/user.js');

var user = {
	getUser: function(req, res) {
		res.send(data.user);
	},
	getUsers: function(req, res) {
		res.send(data.users);
	},
	createUser: function(req, res) {
		res.send('createUser');
	}
};

module.exports = user;