FillupApp = angular.module('FillupApp', ['ngRoute'])

FillupApp.config ($routeProvider, $locationProvider) ->
  $locationProvider.html5Mode true
  $routeProvider.otherwise template: '<h2>Views!</h2>', controller: 'IndexCtrl'
