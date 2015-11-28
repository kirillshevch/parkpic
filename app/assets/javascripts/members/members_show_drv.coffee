angular.module "app.members"
  .directive('memberInfo', ->
    restrict: 'E'
    templateUrl: 'members/info.html'
    link: (scope, rootScope) ->
      console.log(scope.user)
  )