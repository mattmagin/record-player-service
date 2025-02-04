require 'websocket-eventmachine-server'
require_relative 'services/music_request'

class WebSocketServer
    def start
        EM.run do
            WebSocket::EventMachine::Server.start(:host => "0.0.0.0", :port => 8080) do |ws|  
              ws.onmessage do |msg, type|
                puts "Received message: #{msg}"
                ws.send msg, :type => type
                MusicRequest.new(msg)
              end
            end
        end
    end
end