settingsCtrl = ($scope, $rootScope)->

  $scope.update = ->
    updateUser = {
      id:          $rootScope.user.id
      first_name:  $rootScope.user.first_name
      last_name:   $rootScope.user.last_name
      about:       $rootScope.user.about
      email:       $rootScope.user.email
    }
    console.log(updateUser)

angular
  .module('app.settings')
  .controller('settingsCtrl', ['$scope', '$rootScope', settingsCtrl])