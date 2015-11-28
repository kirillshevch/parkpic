settingsCtrl = ($scope, $rootScope, Users)->

  $scope.update = ->
    updateUser = {
      id:          $rootScope.user.id
      first_name:  $rootScope.user.first_name
      last_name:   $rootScope.user.last_name
      about:       $rootScope.user.about
      email:       $rootScope.user.email
    }
    Users.update {updateUser}, (response)->
      console.log(response)

angular
  .module('app.settings')
  .controller('settingsCtrl', ['$scope', '$rootScope', 'Users', settingsCtrl])