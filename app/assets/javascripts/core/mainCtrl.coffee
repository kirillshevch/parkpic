mainCtrl = ($scope, Auth, $location, $rootScope) ->
  if window.anonimusUser
    $scope.ready = true
    $scope.isAuthenticated = false
    $rootScope.user = null
    $scope.currentUser = null
  else
    Auth.currentUser().then ((user) ->
      $scope.isAuthenticated = true
      $scope.ready = true
      $rootScope.user = user.user
    ), (error) ->
      $scope.ready = true

  $scope.logout = ->
    Auth.logout().then ((oldUser) ->
      $rootScope.user = undefined
      $location.path '/sign_in'
    ), (error) ->

angular.module "app.core"
  .controller "mainCtrl", [
    "$scope"
    "Auth"
    "$location"
    "$rootScope"
    mainCtrl
  ]

