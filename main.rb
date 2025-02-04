require './websocket_server'
require_relative 'db/database'
require_relative 'config/initializers/models'

require 'rubygems'
require 'sonos'

system = Sonos::System.new # Auto-discovers your system
speaker = system.speakers.first
puts speaker.name

system.speakers.each do |speaker|
    puts speaker.name
    rescue => e
        puts e  
end

server = WebSocketServer.new
server.start


# speaker.play("http://www.sonos.com/redir/sonos/music/bose/bose-soundlink-mini-ipod-dock-receiver-20090622.mp3")