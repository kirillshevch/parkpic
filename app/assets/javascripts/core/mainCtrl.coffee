mainCtrl = ($scope, Auth, $location, $rootScope) ->
  if window.anonymousUser
    $scope.ready = true
    $scope.isAuthenticated = false
    $rootScope.user = null
    $scope.currentUser = null
  else
    Auth.currentUser().then ((user) ->
      $scope.isAuthenticated = true
      $scope.ready = true
      $rootScope.user = user
    ), (error) ->
      $scope.ready = true

angular.module "app.core"
  .controller "mainCtrl", [
    "$scope"
    "Auth"
    "$location"
    "$rootScope"
    mainCtrl
  ]

