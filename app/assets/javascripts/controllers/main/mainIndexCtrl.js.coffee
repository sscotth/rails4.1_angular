FillupApp = angular.module('FillupApp')

FillupApp.factory "FillupsRes", ($resource) ->
  fillups: $resource('/fillups.json')

FillupApp.controller "IndexCtrl", ($scope, FillupsRes) ->
  $scope.title = "Rubular is Awesome"
  $scope.fillups = FillupsRes.fillups.query({})

  $scope.createFillup = (isValid) ->
    if isValid
      fillup = new FillupsRes.fillups($scope.fillup)
      fillup.$save()

      $scope.fillups.push(fillup)
      window.location = "/"
    else
      alert 'not valid'
