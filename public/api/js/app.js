var app = angular.module('api',[]);

app.controller('ApiCtrl', function($scope){

  $scope.bloque1 = false;
  $scope.bloque2 = false;
  $scope.bloque3 = false;
  $scope.bloque4 = false;
  $scope.bloque5 = false;
  $scope.bloque6 = false;
  $scope.bloque7 = false;
  $scope.bloque8 = false;

  $scope.show1 = function(){
    if ($scope.bloque1 == true) {
      $scope.bloque1 = false;
    }
    else {
      $scope.bloque1 = true;
    }
  }
  $scope.show2 = function(){
    if ($scope.bloque2 == true) {
      $scope.bloque2 = false;
    }
    else {
      $scope.bloque2 = true;
    }
  }
  $scope.show3 = function(){
    if ($scope.bloque3 == true) {
      $scope.bloque3 = false;
    }
    else {
      $scope.bloque3 = true;
    }
  }
  $scope.show4 = function(){
    if ($scope.bloque4 == true) {
      $scope.bloque4 = false;
    }
    else {
      $scope.bloque4 = true;
    }
  }
  $scope.show5 = function(){
    if ($scope.bloque5 == true) {
      $scope.bloque5 = false;
    }
    else {
      $scope.bloque5 = true;
    }
  }
  $scope.show6 = function(){
    if ($scope.bloque6 == true) {
      $scope.bloque6 = false;
    }
    else {
      $scope.bloque6 = true;
    }
  }
  $scope.show7 = function(){
    if ($scope.bloque7 == true) {
      $scope.bloque7 = false;
    }
    else {
      $scope.bloque7 = true;
    }
  }
  $scope.show8 = function(){
    if ($scope.bloque8 == true) {
      $scope.bloque8 = false;
    }
    else {
      $scope.bloque8 = true;
    }
  }
});
