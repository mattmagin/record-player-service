require_relative '../models/tag'
require_relative './sonos_device'
require_relative './spotify_request'

class MusicRequest
    def initialize(requested_tag)
        @requested_tag = requested_tag
        process_request
    end

    private

    def process_request
        device_name = "Kitchen1"

        tag = Tag.find_by_tag_code(@requested_tag)
        spotify_record = SpotifyRecord.find_by_id(tag.spotify_record_id)

        device = SonosDevice.new(device_name)
        request = SpotifyRequest.new(spotify_record.uri, spotify_record.record_type)
        device.queue_request(request)  
        device.play()
    end
end