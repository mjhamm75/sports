var data = require('./../mock-data/user.js');
var User = require('../../db/models/user.js');

var Sequelize = require('sequelize');

var match = process.env.HEROKU_POSTGRESQL_OLIVE_URL.match(/postgres:\/\/([^:]+):([^@]+)@([^:]+):(\d+)\/(.+)/);
 
var sequelize = new Sequelize(match[5], match[1], match[2], {
  dialect:  'postgres',
  protocol: 'postgres',
  port:     match[4],
  host:     match[3],
  logging:  console.log
})

    
sequelize
.authenticate()
.complete(function(err) {
    if (err) {
        console.log('Unable to connect to the database:', err)
    } else {
        console.log('Connection has been established successfully.')
    }
});

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
		res.send('createUser');
	}
};

module.exports = user;