'use strict'

angular.module 'faIconFromUrl', []

angular.module('faIconFromUrl')
  .directive 'faIconFromUrl', ->
    template: '<div></div>'
    restrict: 'E'
    link: (scope, element, attrs) ->
      element.text 'this is the faIconFromUrl directive'