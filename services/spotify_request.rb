class SpotifyRequest
    def initialize(uri, type)
        @uri = uri
        @type = type
    end

    def share_link()
        "https://open.spotify.com/#{@type}/#{@uri}"
    end
end