'use strict';

/* Controllers */

angular.module('menuApp.controllers', []).
  controller('MenuController', [function() {
	  var permissions = $resource('/user/permissions');
  }])
  .controller('MyCtrl2', [function() {

  }]);