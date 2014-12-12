var Sequelize = require('sequelize');

var match = process.env.HEROKU_POSTGRESQL_OLIVE_URL.match(/postgres:\/\/([^:]+):([^@]+)@([^:]+):(\d+)\/(.+)/);
 
var sequelize = new Sequelize(match[5], match[1], match[2], {
  dialect:  'postgres',
  protocol: 'postgres',
  port:     match[4],
  host:     match[3],
  logging:  console.log
})



var User =  sequelize.define("User", {
      id: {
        type: Sequelize.INTEGER,
        primaryKey: true
      },
      first_name: {
        type: Sequelize.STRING
      },
      last_name: {
        type: Sequelize.STRING
      },
      gender: {
        type: Sequelize.STRING
      },
      dob: {
        type: Sequelize.DATE
      },
      bio: {
        type: Sequelize.STRING
      },
      pic: {
        type: Sequelize.BLOB
      },
      contact_info_id: {
        type: Sequelize.INTEGER
      }
    }, {
      tableName: "users",
      timestamps: false
    });


module.exports = User;