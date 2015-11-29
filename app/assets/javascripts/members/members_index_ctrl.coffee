membersIndexCtrl = ($scope, $routeParams, $location, User, Photo) ->

  unless $location.search().page
    $location.search {page: 1}
    $scope.$apply() unless $scope.$$phase

  User.index page: $location.search().page, (response) ->
    $scope.members = response.users
    $scope.count = response.count
    $scope.page = response.page

angular.module "app.members"
  .controller "membersIndexCtrl", [
    "$scope"
    "$routeParams"
    "$location"
    "User"
    "Photo"
    membersIndexCtrl
   ]
