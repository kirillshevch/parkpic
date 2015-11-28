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

      .when '/members',
        templateUrl: 'members/index.html',
        controller: 'membersIndexCtrl'

      .when '/members/:id',
        templateUrl: 'members/show.html',
        controller: 'membersShowCtrl'

        
      .otherwise
        redirectTo: '/'
  ])
