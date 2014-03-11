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

      $scope.fillups.push(fillup) # no ()
      window.location = "/"
    else
      alert 'not valid'

  $scope.sortingOrder =
    property: "odometer"
    descending: true

  $scope.predicate = (fillup) ->
    strToNumFields = ["odometer","price","volume"]
    value = fillup[$scope.sortingOrder.property]
    value = parseInt value if strToNumFields.indexOf($scope.sortingOrder.property) isnt -1
    value

FillupApp.directive 'showOnHoverParent', ->
  restrict: 'A',
  link: (scope, element, attrs) ->
    element.parent().bind 'mouseover', ->
      $(element).fadeTo( 150, 1 );
    element.parent().bind 'mouseleave', ->
      $(element).fadeTo( 150, 0 );
