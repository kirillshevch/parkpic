commentsFormDirective = ->
    restrict: "E"
    scope:
      comment: "="
      commentableType: "="
      commentableId: "="
      commentId: "="
      suffix: "@"
    templateUrl: 'comments/form.html'
    controller: ["$scope", "Comment", ($scope, Comment) ->
      $scope.emojiMessage = {}
      $scope.msg = ""

      if $scope.suffix == "" || !$scope.suffix
        commentsScope = $scope.$parent
      else if $scope.suffix == "_reply"
        commentsScope = $scope.$parent.$parent.$parent

      addedComment = (comment) ->
        $scope.emojiMessage = {}
        $scope.msg = ""
        commentsScope.comments.push comment
        commentsScope.addedComments.push comment.id
        $scope.$parent.$parent.reply = false if $scope.$parent.$parent.reply

      $scope.submitComment = ->
        comment = 
          commentable_id: $scope.commentableId
          commentable_type: $scope.commentableType
          body: $scope.msg
          comment_id: $scope.commentId
        Comment.create {comment: comment}, (comment) ->
          addedComment(comment)
    ]
    link: (scope, element) -> 
      element.bind 'keyup', (e) -> 
        scope.submitComment() if e.which == 13
      

angular.module "app.comments"
  .directive "commentsForm", [commentsFormDirective]
