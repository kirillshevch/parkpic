angular.module "app.core"
  .factory "Users", ($resource) ->
    $resource "/api/users/:id", { id: "@id"},
      index:  method: "GET"
      show:   method: "GET"
      update: method: "PATCH"
  .factory "User", ($resource) ->
    $resource "/api/users/", { id: "@id"},
      index:  method: "GET"
      show:   method: "GET"
  .factory "Photo", ($resource) ->
    $resource "/api/photos/:id", { id: "@id", user_id: "@user_id"},
      index:  method: "GET"
      show:   method: "GET"
  .factory "Comment", ($resource) ->
    $resource "/api/comments/:id", { id: "@id" },
      index:  method: "GET"
      create:
        method: 'POST'
