var config = function($routeProvider) {
	$routeProvider.when('/', {
		controller: 'usersController',
		templateUrl: 'app/js/user/users.html'
	});
};

var controller = function($scope, $http){
	$scope.test = "Kurt is a weenie";
	$http.get('/users')
	.success(function(data, status) {
		$scope.users = data;
	})
	.error(function(data, status) {
		console.log(status);
	});
	
	$http.get('/teams')
	.success(function(data, status) {
		$scope.teams = data;
	})
	.error(function(data, status) {
		console.log(status);
	});
};

module.exports = {
	controller: controller,
	config: config
};