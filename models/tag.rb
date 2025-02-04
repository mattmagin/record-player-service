require 'active_record' 

class Tag < ActiveRecord::Base
    belongs_to :spotify_record

    def self.find_by_tag_code(tag_code)
        Tag.find_by(tag_code: tag_code)
    end
end