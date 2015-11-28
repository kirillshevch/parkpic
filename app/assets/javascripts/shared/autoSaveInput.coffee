directive = ->
  scope:
    autoSaveInput: '&'
    focus: '='
    multiline: '='
  require: '?ngModel'

  link: ($scope, $elem, $attr, $ngModel) ->
    return if not $ngModel

    focus = ->
      $elem.focus() if $scope.focus

    bindEvents = ->
      $elem.bind 'blur', ->
        $elem.attr('focus', false)
        save()
        false

      $elem.bind 'keydown', (e) ->
        if e.ctrlKey && e.keyCode == 13 || !$scope.multiline && e.keyCode == 13
          $elem.blur()
          save()
          false

    save = ->
      if $ngModel.$valid
        $scope.$apply($scope.autoSaveInput)

    init = ->
      bindEvents()
      focus()

    init()

angular
  .module('app.shared')
  .directive('autoSaveInput', [directive])