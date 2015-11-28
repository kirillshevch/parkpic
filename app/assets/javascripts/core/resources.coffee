angular.module "app.core"
  .factory "Users", ($resource) ->
    $resource "/api/users/:id", { id: "@id"},
      index:  method: "GET"
      show:   method: "GET"
      update: method: "PATCH"
