require_relative '../models/tag'
require_relative '../services/sonos_request'

class MusicRequest
    def initialize(requested_tag)
        @requested_tag = requested_tag
        process_request
    end

    private

    def process_request
        tag = Tag.find_by_tag_code(@requested_tag)
        spotify_record = SpotifyRecord.find_by_id(tag.spotify_record_id)
        SonosRequest.new(spotify_record.uri, spotify_record.record_type)
        # puts "Processing message: #{@message}"
    #        tag = Tag.find_by(tag_code: @message['tag_code'])

    end
end