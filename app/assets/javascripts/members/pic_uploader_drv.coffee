memberPicUploaderDrv = ->
  restrict: "E"
  templateUrl: "members/pic_uploader.html"
  controller: ["$scope", "Upload", "$modal", ($scope, Upload, $modal) ->
    $scope.newPic = null
    $scope.description = ''
    picModal = $modal(
      container: "body"
      scope: $scope
      templateUrl: "members/new_pic_modal.html"
      show: false
    )
    $scope.showPopup = ->
      picModal.show()
    $scope.uploadData = ->
      Upload.upload(url: '/api/photos', data: {photo: {file: $scope.newPic, short_text: $scope.description}}).then (response) -> 
        $scope.photos.push response.data.photo
        picModal.hide()
  ]

angular.module "app.members"
  .directive 'memberPicUploader', [memberPicUploaderDrv]
