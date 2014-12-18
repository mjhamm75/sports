"use strict";

var fs        = require("fs");
var path      = require("path");
var Sequelize = require("sequelize");
var env       = process.env.NODE_ENV || "development";
var config    = require(__dirname + '/../config/config.json')[env];
var  sequelize = new Sequelize('d7v0htmpq36aim', 'mpwgblcimtalqt', 'J4cMctMLnqe09TgT4b3N-BNOE3', {
      dialect:  'postgres',
      protocol: 'postgres',
      port:     5432,
      host:     'ec2-54-243-44-191.compute-1.amazonaws.com',
      logging:  console.log
    });
var db        = {};

fs
  .readdirSync(__dirname)
  .filter(function(file) {
    return (file.indexOf(".") !== 0) && (file !== "index.js");
  })
  .forEach(function(file) {
    var model = sequelize["import"](path.join(__dirname, file));
    db[model.name] = model;
  });

Object.keys(db).forEach(function(modelName) {
  if ("associate" in db[modelName]) {
    db[modelName].associate(db);
  }
});

db.sequelize = sequelize;
db.Sequelize = Sequelize;

module.exports = db;
