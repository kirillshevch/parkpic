membersIndexCtrl = ($scope, $routeParams, $location, User, Photo) ->
  unless $location.search().page
    $location.search {page: 1}
    $scope.$apply() unless $scope.$$phase

  User.index {}, (response) ->
    $scope.members = response.users
    $scope.count = $scope.members.length

angular.module "app.members"
  .controller "membersIndexCtrl", [
    "$scope"
    "$routeParams"
    "$location"
    "User"
    "Photo"
    membersIndexCtrl
   ]
