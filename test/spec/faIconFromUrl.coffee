'use strict'

describe 'Directive: faIconFromUrl', ->

  beforeEach module 'faIconFromUrl'

  scope = {}
  element = null

  beforeEach inject ($rootScope, $compile) ->
    scope     = $rootScope.$new()
    scope.url = null
    element   = angular.element '<i fa-icon-from-url="url"></i>'
    element   = $compile(element) scope

    this.addMatchers
      toHaveFontAwesomeIcon: (iconName) ->
        @actual.hasClass('fa') == true && @actual.hasClass("fa-#{iconName}") == true

  it 'should add an external link icon for unknown url', ->
    scope.url = 'http://www.unkown.com'
    scope.$digest()
    expect(element).toHaveFontAwesomeIcon 'external-link'

  it 'should add a github icon for github url', ->
    scope.url = 'www.github.com/azzamallow'
    scope.$digest()
    expect(element).toHaveFontAwesomeIcon 'github'

  it 'should add a twitter icon for twitter url', ->
    scope.url = 'www.twitter.com/azzamallow'
    scope.$digest()
    expect(element).toHaveFontAwesomeIcon 'twitter'

  it 'should add a twitter icon for twitter handle', ->
    scope.url = '@azzamallow'
    scope.$digest()
    expect(element).toHaveFontAwesomeIcon 'twitter'

  it 'should add a linkedin icon for linkedin url', ->
    scope.url = 'www.linkedin.com/azzamallow'
    scope.$digest()
    expect(element).toHaveFontAwesomeIcon 'linkedin'

  it 'should add an envelope icon for an email address', ->
    scope.url = 'aaron@gmail.com'
    scope.$digest()
    expect(element).toHaveFontAwesomeIcon 'envelope'

  it 'should remove any previous existing icons when the input changes', ->
    scope.url = 'http://www.github.com/azzamallow'
    scope.$digest()
    expect(element).toHaveFontAwesomeIcon 'github'

    scope.url = 'http://www.linkedin.com/azzamallow'
    scope.$digest()
    expect(element).not.toHaveFontAwesomeIcon 'github'
    expect(element).toHaveFontAwesomeIcon 'linkedin'