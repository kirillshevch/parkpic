settingsCtrl = ($scope)->

  $scope.update = ->
    
    console.log('cool')

angular
  .module('app.settings')
  .controller('settingsCtrl', ['$scope', settingsCtrl])