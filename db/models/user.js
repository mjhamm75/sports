var Sequelize = require('sequelize');

var match = process.env.HEROKU_POSTGRESQL_OLIVE_URL.match(/postgres:\/\/([^:]+):([^@]+)@([^:]+):(\d+)\/(.+)/);
 
var sequelize = new Sequelize(match[5], match[1], match[2], {
  dialect:  'postgres',
  protocol: 'postgres',
  port:     match[4],
  host:     match[3],
  logging:  console.log
})



module.exports = function(sequelize, DataTypes) {
  
  return sequelize.define("User", {
      id: {
        type: DataTypes.INTEGER,
        primaryKey: true
      },
      first_name: {
        type: DataTypes.STRING
      },
      last_name: {
        type: DataTypes.STRING
      },
      gender: {
        type: DataTypes.STRING
      },
      dob: {
        type: DataTypes.DATE
      },
      bio: {
        type: DataTypes.STRING
      },
      pic: {
        type: DataTypes.BLOB
      },
      contact_info_id: {
        type: DataTypes.INTEGER
      }
    }, {
      tableName: "users"
    });
}