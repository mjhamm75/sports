var config = function($routeProvider) {
	$routeProvider.when('/', {
		controller: 'usersController',
		templateUrl: 'app/user/users.html'
	});
};

var controller = function($scope){
	$scope.test = "Jason";
};

module.exports = {
	controller: controller,
	config: config
};