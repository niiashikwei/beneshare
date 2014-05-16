mainApp = angular.module('main_app', []);

mainApp.controller 'RequestController', ['$scope', ($scope) ->
  $scope.message = "Please provide details for your request"
  $scope.create_request  = ->
    alert this.message
]