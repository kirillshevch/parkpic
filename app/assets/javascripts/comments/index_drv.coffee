commentsIndexDirective = ->
  restrict: "E"
  replace: true
  scope:
    comments: "="
    onscroll: "="
    getByScroll: "="
    commentableType: "="
    commentableId: "="
  templateUrl: "comments/index.html"
  controller: ["$scope", ($scope) ->
    $scope.addedComments = []
  ]
  link: (scope, element) ->
    if scope.onscroll
      getItems = (items) -> scope.getByScroll(items)
      $(window).scroll (e) ->
        if (@pageYOffset + $(window).height()) > $("body").height()
          getItems(scope.addedComments)


angular.module "app.shared"
  .directive "commentsIndex", [commentsIndexDirective]
