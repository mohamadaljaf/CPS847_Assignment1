express = require 'express'
router = express.Router()

router.get '/', (req, res) ->
  res.send "The bot is up!"

module.exports = router
