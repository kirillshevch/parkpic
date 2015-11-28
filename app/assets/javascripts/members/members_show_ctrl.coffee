membersShowCtrl = ($scope, $routeParams, $location, User, Photo) ->

  unless $location.search().page
    $location.search {page: 1}
    $scope.$apply() unless $scope.$$phase
  User.show {id: $routeParams.id}, (response) ->
    $scope.member = _.where(response.users, {id: parseInt($routeParams.id)})[0]
    $scope.count = $scope.member.photos.length

angular.module "app.members"
  .controller "membersShowCtrl", [
    "$scope"
    "$routeParams"
    "$location"
    "User"
    "Photo"
    membersShowCtrl
   ]
