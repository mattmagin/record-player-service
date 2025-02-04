require_relative '../models/tag'
require_relative '../services/sonos_request'

class SonosRequest
    def initialize(uri, type)
        @uri = uri
        @type = type
        send_to_sonos
    end

    private

    def send_to_sonos
        puts "Sending to Sonos: #{@uri} #{@type}"
    end
end