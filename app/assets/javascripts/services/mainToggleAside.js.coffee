FillupApp = angular.module('FillupApp')

FillupApp.service 'asideVisibility', ($rootScope) ->
  asideVisible = true
  flip: ->
    asideVisible = not asideVisible
    console.log asideVisible
    $rootScope.$broadcast('asideVisibilityChanged', asideVisible);
