### serve - Serves a static directory ###

express = require 'express'
cfg = require './cfg/config.js'

app = express()
app.use express.favicon()

### Logic ###
directory = process.argv[2] || __dirname + '/static'  # Directory to serve files from
app.use express.static directory  # Default static directory
console.log "Serving static files from '#{directory}'"

### Start the App ###
app.listen "#{cfg.PORT}"