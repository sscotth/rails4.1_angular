FillupApp = angular.module('FillupApp')

FillupApp.factory "fillupsRes", ($resource) ->
  fillups: $resource('/fillups.json')

FillupApp.controller "IndexCtrl", ($scope, fillupsRes) ->
  $scope.title = "Rubular is Awesome"
  $scope.fillups = fillupsRes.fillups.query({})
