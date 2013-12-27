'use strict'

describe 'Directive: faIconFromUrl', ->

  beforeEach module 'faIconFromUrl'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<fa-icon-from-url></fa-icon-from-url>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the faIconFromUrl directive'
