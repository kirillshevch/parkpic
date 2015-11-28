membersShowCtrl = ($scope, $routeParams, $location, User, Photo) ->

  unless $location.search().page
    $location.search {page: 1}
    $scope.$apply() unless $scope.$$phase

  Photo.index {user_id: $routeParams.id, page: $location.search().page}, (response) ->
    $scope.photos = response.photos
    $scope.page = response.page
    $scope.count = response.count

angular.module "app.members"
  .controller "membersShowCtrl", [
    "$scope"
    "$routeParams"
    "$location"
    "User"
    "Photo"
    membersShowCtrl
   ]
