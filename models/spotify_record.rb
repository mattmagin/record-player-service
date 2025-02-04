require 'active_record' 

class SpotifyRecord < ActiveRecord::Base
    def self.find_by_id(id  )
        SpotifyRecord.find_by(id: id)
    end
end