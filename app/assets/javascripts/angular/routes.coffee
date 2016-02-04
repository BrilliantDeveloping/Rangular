angular.module "rangular"
  .config ($stateProvider, $urlRouterProvider) ->

     $stateProvider

      .state 'main',
        url: '/'
        template: 'Hey there!'