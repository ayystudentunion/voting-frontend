'use strict'

###*
 # @ngdoc function
 # @name hyyVotingFrontendApp.controller:VoteCtrl
 # @description
 # # VoteCtrl
 # Controller of the hyyVotingFrontendApp
###
angular.module 'hyyVotingFrontendApp'
  .controller 'VoteCtrl', (Restangular) ->

    @candidates = []

    Restangular.all('candidates.json').getList()
      .then((candidates) =>
        @candidates = candidates
      )

    @register = ->
      console.log "You voted #{@selected}"

    return
