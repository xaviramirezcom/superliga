'use strict';

/* Controllers */

angular.module('menuApp.controllers', []).controller(
		'MenuController',
		[ function($scope, $http) {

			$http.get('api/public/user/xaviercobain88/permissions').success(
					function(data, status, headers, config) {
						alert('funciona');
						$scope.permissions = data.object;
					}).error(function(data, status, headers, config) {
				alert('nofunciona');
			});
		} ]).controller('MyCtrl2', [ function() {

} ]);