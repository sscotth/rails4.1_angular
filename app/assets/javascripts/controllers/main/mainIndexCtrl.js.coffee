FillupApp = angular.module('FillupApp')

FillupApp.factory "FillupsRes", ($resource) ->
  fillups: $resource('/fillups.json')

FillupApp.controller "IndexCtrl", ($scope, FillupsRes) ->
  $scope.title = "Rubular is Awesome"
  $scope.fillups = FillupsRes.fillups.query({})
