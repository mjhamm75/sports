var config = function($routeProvider) {
	$routeProvider.when('/', {
		controller: 'usersController',
		templateUrl: 'app/js/user/users.html'
	});
};

var controller = function($scope){
	$scope.test = "Kurt is a weenie";
};

module.exports = {
	controller: controller,
	config: config
};