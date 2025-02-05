require './websocket_server'
require_relative 'db/database'
require_relative 'config/initializers/models'

server = WebSocketServer.new
server.start