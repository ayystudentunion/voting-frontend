'use strict'

angular.module 'hyyVotingFrontendApp'
  .factory 'alliances', (SessionRestangular) ->
    get: (electionId) ->
      SessionRestangular
        .one("elections", electionId)
        .all("alliances")
        .getList()
