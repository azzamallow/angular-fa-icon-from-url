'use strict'

angular.module 'faIconFromUrl', []

angular.module('faIconFromUrl')
  .directive 'faIconFromUrl', ->

    # font awesome link to icon patterns (order matters)
    patterns = 
      github:   /github\.com/
      linkedin: /linkedin\.com/
      twitter:  /^@|twitter.com/
      envelope: /.*@.*/

    # directive
    scope:
      faIconFromUrl: '=' 
    link: (scope, element, attrs) ->
      # add font awesome icon class
      element.addClass 'fa'

      # listen for changes
      scope.$watch 'faIconFromUrl', ->
        # remove any other font awesome icon classes already added
        element[0].className = element[0].className.replace /fa-\S+/g, ' '

        # find a matching icon
        for name, pattern of patterns
          if pattern.test scope.faIconFromUrl
            element.addClass "fa-#{name}"
            return

        # no match, add a default
        element.addClass 'fa-external-link'