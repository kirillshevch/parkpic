angular.module('app.core')
  .config(['$routeProvider', ($routeProvider)->
    $routeProvider
      .when '/',
        templateUrl: 'pages/index.html'
        controller: 'indexPageCtrl'

      .when '/sign_up',
        templateUrl: 'auth/sign_up.html',
        controller: 'registrationCtrl'

      .when '/sign_in',
        templateUrl: 'auth/sign_in.html',
        controller: 'sessionsCtrl'

        
      .otherwise
        redirectTo: '/'
  ])
