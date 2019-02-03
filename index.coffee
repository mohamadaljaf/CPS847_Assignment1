express = require 'express'
bot = require './controllers/bots'

app = express()

port = process.env.PORT || 3000

app.listen port, ->
  console.log "Now listening on port: #{port}"
