var db = require("../index.js");


var User =  db.sequelize.define("User", {
      id: {
        type: db.Sequelize.INTEGER,
        primaryKey: true
      },
      first_name: {
        type: db.Sequelize.STRING
      },
      last_name: {
        type: db.Sequelize.STRING
      },
      gender: {
        type: db.Sequelize.STRING
      },
      dob: {
        type: db.Sequelize.DATE
      },
      bio: {
        type: db.Sequelize.STRING
      },
      pic: {
        type: db.Sequelize.BLOB
      },
      contact_info_id: {
        type: db.Sequelize.INTEGER
      }
    }, {
      tableName: "users",
      timestamps: false
    });

console.log(User);

module.exports = User;