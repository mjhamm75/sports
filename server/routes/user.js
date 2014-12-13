var db = require('../../db/index.js');

// var Sequelize = require('sequelize');

// var match = process.env.HEROKU_POSTGRESQL_OLIVE_URL.match(/postgres:\/\/([^:]+):([^@]+)@([^:]+):(\d+)\/(.+)/);
 
// var sequelize = new Sequelize(match[5], match[1], match[2], {
//   dialect:  'postgres',
//   protocol: 'postgres',
//   port:     match[4],
//   host:     match[3],
//   logging:  console.log
// })

var user = {
	getUser: function(req, res) {
		db.User.find( { where: { id: req.params.id}})
		.complete(function(err, users) {
			res.json(users)
		})
	},
	getUsers: function(req, res) {
		db.User.findAll()
		.complete(function(err, users) {
			res.json(users)
		})
	},
	createUser: function(req, res) {
		var u = req.body;
		db.User.create({
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