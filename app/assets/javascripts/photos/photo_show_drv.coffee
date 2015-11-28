photoShowDrv = ->
  restrict: "E"
  replace: true
  scope:
    photoId: "="
  templateUrl: "photos/show.html"
  controller: ["$scope", "Photo", "Comment", ($scope, Photo, Comment) ->
    Photo.show {id: $scope.photoId}, (response) ->
      $scope.photo = response.photo_show
      Comment.index {commentable_type: "Photo", commentable_id: $scope.photo.id, added_comments: ''}, (reponse) ->
        $scope.comments = reponse.comments.items
  ]

angular.module "app.photos"
  .directive "photoShow", [photoShowDrv]
