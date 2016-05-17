@app = angular.module('expotask', [
  'templates',
  'rails',
  'ui.router',
  'ui.bootstrap'
  'templates',
  'ngVis',
])

# for compatibility with Rails CSRF protection

@app.config([
  '$httpProvider', ($httpProvider)->
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
    $httpProvider.defaults.withCredentials = true;


])
