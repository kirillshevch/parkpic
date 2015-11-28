//= require_self
//= require ./core/core
//= require ./auth/auth
//= require ./pages/pages
//= require ./settings/settings
//= require ./shared/shared
//= require ./members/members
//= require ./photos/photos
//= require ./comments/comments

underscore = angular.module('underscore', [])
underscore.factory '_', [
  '$window'
  ($window) ->
    $window._
]

angular.module 'app', [
  "Devise"
  "ngCookies"
  "ngResource"
  "ngRoute"
  "ngSanitize"
  "templates"
  "underscore"
  "ngFileUpload"
  "mgcrea.ngStrap.core"
  "mgcrea.ngStrap.modal"
  "mgcrea.ngStrap.helpers.dimensions"
  "underscore"
  "emojiApp"
  "app.core"
  "app.shared"
  "app.pages"
  "app.auth"
  "app.settings"
  "app.members"
  "app.photos"
  "app.comments"
]

angular
  .module 'app'
  .config [
    "$locationProvider"
    ($locationProvider)->
      $locationProvider.html5Mode({enabled: true, requireBase: false}).hashPrefix('!')
  ]
