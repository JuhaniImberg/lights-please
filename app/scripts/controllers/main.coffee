'use strict'

###*
 # @ngdoc function
 # @name lightsPleaseApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the lightsPleaseApp
###
angular.module('lightsPleaseApp')
  .controller 'MainCtrl', ($scope, Data) ->
    $scope.groups = Data.groups

    $scope.$on "update", ->
      $scope.groups = Data.groups

    $scope.toggle = (group) ->
      if group.value != 0
        Data.push {groups: [{name: group.name, value: 0}]}
      else
        Data.push {groups: [{name: group.name, value: 255}]}