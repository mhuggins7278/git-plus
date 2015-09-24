git = require '../git'
GitCommit = require './git-commit'
GitPull = require './git-pull'
GitPush = require './git-push'

gitAddAllCommitPullAndPush = (repo) ->
  git.add repo,
    file: null,
    exit: ->
      new GitCommit(repo, andPush: false)
      exit: ->
        new GitPull(repo)
        exit: ->
          new GitPush(repo)


module.exports = gitAddAllCommitPullAndPush