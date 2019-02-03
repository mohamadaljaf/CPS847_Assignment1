express = require 'express'

app = express()

port = process.env.PORT || 3000

bot = require './controllers/bots'

app.use require './controllers/static'

app.listen port, ->
  console.log "Now listening on port: #{port}"
