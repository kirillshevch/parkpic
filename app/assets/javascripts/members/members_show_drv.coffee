angular.module "app.members"
  .directive('memberInfo', ->
    restrict: 'E'
    templateUrl: 'members/info.html'
    scope: {
      user: "="
    }
  )