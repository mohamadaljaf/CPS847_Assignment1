SlackBot = require 'slackbots'

bot = new SlackBot
  token: process.env.BOT_TOKEN
  name: process.env.BOT_NAME || 'sambot'

bot.on 'start', ->
  this.postMessageToChannel 'botspam', 'Hello, I am awake!'

bot.on 'message', (data) ->
  index = this.ims.findIndex (im) ->
    im.id == data.channel
  console.log index
  if data.type == 'message' && data.username != this.name && (data.text.includes("<@#{this.self.id}>" )|| index != -1)
    bot.postMessage data.channel, data.text.split("<@#{this.self.id}>").join("")

module.exports = bot
