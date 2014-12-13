var User = require('../../db/models/user.js');

var user = {
	getUser: function(req, res) {
		User.find( { where: { id: req.params.id}})
		.complete(function(err, users) {
			res.json(users)
		})
	},
	getUsers: function(req, res) {
		User.findAll()
		.complete(function(err, users) {
			res.json(users)
		})
	},
	createUser: function(req, res) {
		var u = req.body;
		User.create({
			id: u.id,
			first_name: u.first_name,
			last_name: u.last_name,
			gender: u.gender,
			dob: u.dob,
			bio: u.bio,
			pic: u.pic,
			contact_info_id: u.contact_info_id
		})
		.complete(function(err, user) {
			res.send('createUser');	
			res.json(user)
		})
		
	}
};

module.exports = user;