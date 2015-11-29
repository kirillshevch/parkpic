settingsCtrl = ($scope, $rootScope, Users, Upload)->

  $scope.update = ->
    Users.update $rootScope.user, (response) ->
      $rootScope.user = response.user
      App.Alert.show("success", "Updated")

  $scope.uploadAvatar = ->
    Upload.upload(url: '/api/users/'+$rootScope.user.id, data: { user: { avatar: $rootScope.user.picAvatar }}, objectKey: '[k]', arrayKey: '[i]', method: 'PUT').then (response) ->

angular
  .module('app.settings')
  .controller('settingsCtrl', ['$scope', '$rootScope', 'Users', 'Upload', settingsCtrl])
