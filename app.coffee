express = require 'express'
cfg = require './cfg/config.js'

app = express()
app.use express.favicon()
app.use express.bodyParser()
app.use express.cookieParser()
app.set 'views', __dirname + '/views'
app.set 'view engine', 'jade'
app.use app.router

### Controllers ###

### Routes ###
# app.get '*', (req, res) ->
  # Route to the given folder


### Logic ###
directory = process.argv[2] || __dirname + '/static'  # Directory to serve files from
app.use express.static directory  # Default static directory

console.log "Serving static files from '#{directory}'"



### Start the App ###
app.listen "#{cfg.PORT}"