angular.module "app.members"
  .directive('member-info', ->
    restrict: 'E'
    templateUrl: 'members/info.html'
    scope: {
      user: '&'
    }
  )