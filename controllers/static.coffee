express = require 'express'
router = express.Router()

router.get '/', (req, res) ->
  res.sendFile 'index.html', root: "./git_tst" 

module.exports = router
