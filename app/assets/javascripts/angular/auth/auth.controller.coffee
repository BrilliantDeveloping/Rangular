angular.module "rangular"
  .controller 'AuthCtrl', ($state, $scope, $auth) ->
    
    $auth.validateUser().then (resp) ->
      $state.go 'main'
  
    $scope.login = ->
      $auth.submitLogin(
        email: $scope.email
        password: $scope.password).then((resp) ->
        # 
      ).catch (resp) ->
        # 
    
    $scope.register = ->
      $auth.submitRegistration(
        email: $scope.email
        password: $scope.password
        password_confirmation: $scope.password_confirmation).then((resp) ->
        $auth.submitLogin
          email: $scope.email
          password: $scope.password
      ).catch (resp) ->
        $state.go "register"
        