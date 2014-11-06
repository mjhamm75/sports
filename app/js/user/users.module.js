require('angular-route/angular-route');

var usersModule = angular.module('users', ['ngRoute']);

var usersController = require('./users.controller.js');
usersModule.controller('usersController', usersController.controller);
usersModule.config(usersController.config);