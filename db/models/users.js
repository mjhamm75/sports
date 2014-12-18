"use strict";

module.exports = function(sequelize, DataTypes) {
  var User = sequelize.define("User", {
    first_name: DataTypes.STRING,
    last_name: DataTypes.STRING,
    gender: DataTypes.STRING,
    dob: DataTypes.DATE,
    bio: DataTypes.STRING,
    pic: DataTypes.BLOB,
    contact_info_id: DataTypes.INTEGER
  }, {
    classMethods: {
      associate: function(models) {
        // associations can be defined here
      }
    }
  });

  return User;
};
