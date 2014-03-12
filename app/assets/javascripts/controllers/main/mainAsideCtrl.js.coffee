FillupApp = angular.module('FillupApp')

FillupApp.controller "AsideCtrl", ($scope, asideVisibility) ->
  $scope.asideVisible = true
  $scope.asideVisibleFlip = ->
    asideVisibility.flip()
  $scope.$on "asideVisibilityChanged", (event, asideVisible) ->
    $scope.asideVisible = asideVisible
