path = require('path')

module.exports = (app) ->

  app.get "/", (req, res) ->
    res.render "#{__dirname}/views/index"

  app.get "/videos/:name", (req, res) ->
    res.sendfile(path.resolve(__dirname, "../../videos/#{req.params.name}"))