SlackBot = require 'slackbots'

bot = new SlackBot
  token: process.env.BOT_TOKEN
  name: process.env.BOT_NAME || 'sambot'

bot.on 'start', ->
  bot.postMessageToChannel 'botspam', 'Hello, I am awake!'


bot.on 'message', (data) ->
  if data.type == 'message' && data.username != bot.name
    bot.postMessage data.channel, data.text

module.exports = bot
