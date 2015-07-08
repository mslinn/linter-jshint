
module.exports =
  provideLinter: ->
    jshintPath = require('path').join(__dirname, '..', 'node_modules', '.bin', 'jshint')
    helpers = require('atom-linter')
    reporter = require('jshint-json') # a string path
    provider =
      grammarScopes: ['source.js']
      scope: 'file'
      lintOnFly: true
      lint: (textEditor) ->
        filePath = textEditor.getPath()
        text = textEditor.getText()
        parameters = ['--reporter', reporter, '--extract', 'auto', '--filename', filePath, '-']
        return helpers.exec(jshintPath, parameters, {stdin: text}).then (output) ->
          return JSON.parse(output).result.filter((entry) -> entry.error.id).map (entry) ->
            error = entry.error
            point = [error.line - 1, error.character - 1]
            return {
              type: error.id.substr(1, error.id.length - 2)
              text: error.reason
              filePath,
              range: [point, point]
            }