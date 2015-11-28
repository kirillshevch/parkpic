mainCtrl = ($scope, $rootScope)->
  mainCtrl = ->
  ($scope, Auth, $location, $rootScope) ->
    if window.anonimusUser
      $scope.ready = true
      $scope.isAuthenticated = false
      $rootScope.user = null
      $scope.currentUser = null
    else
      Auth.currentUser().then ((user) ->
        $scope.isAuthenticated = true
        $scope.ready = true
      ), (error) ->
        $scope.ready = true

angular.module "app.core"
.controller "mainCtrl", [
  "$scope"
  "Auth"
  "$location"
  "$rootScope"
  mainCtrl()
]