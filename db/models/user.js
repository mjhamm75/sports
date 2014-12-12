var Sequelize = require('sequelize')
  , sequelize = new Sequelize('sports', 'postgres', 'postgres', {
      dialect: "postgres", // or 'sqlite', 'postgres', 'mariadb'
      port:    3306, // or 5432 (for postgres)
    });


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