app = angular.module 'main_app', ['ngResource']

app.controller 'RequestController', ($resource)->
  Request = $resource("/requests.json")

  return{
    requests: Request.query ->
  }
