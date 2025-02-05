class CreateSpotifyRecords < ActiveRecord::Migration[7.1]
  def change
    create_enum :record_type, ['track', 'album', 'artist', 'playlist']

    create_table :spotify_records do |t|
      t.string :uri
      t.enum :record_type, enum_type: 'record_type', null: false
    end
  end
end
