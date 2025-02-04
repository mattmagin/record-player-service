require './websocket_server'
require_relative 'db/database'

server = WebSocketServer.new
server.start