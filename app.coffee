### serve - Serves a static directory ###

express = require 'express'
cfg = require './cfg/config.js'

app = express()
app.use express.favicon()

### Logic ###
directory = process.argv[2] || __dirname + '/static'  # Directory to serve files from

if directory is '.' # Using '.' is a common use case but throws a ton of errors
  directory = process.cwd() # Use the current working directory

app.use express.static directory  # Serve the files!
console.log "Serving static files from '#{directory}'"

### Start the App ###
app.listen "#{cfg.PORT}"