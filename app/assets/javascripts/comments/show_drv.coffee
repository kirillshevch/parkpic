commentsShowDirective = ($compile) ->
  restrict: "E"
  replace: true
  scope:
    comment: "="
  templateUrl: "comments/show.html"

angular.module "app.shared"
  .directive "commentsShow", ["$compile", commentsShowDirective]
