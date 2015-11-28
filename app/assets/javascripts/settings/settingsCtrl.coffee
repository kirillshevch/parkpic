settingsCtrl = ($scope, $rootScope, Users)->

  $scope.update = ->
    Users.update({id: $rootScope.user.id}, $rootScope.user)

angular
  .module('app.settings')
  .controller('settingsCtrl', ['$scope', '$rootScope', 'Users', settingsCtrl])