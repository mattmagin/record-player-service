class CreateSpotifyIds < ActiveRecord::Migration[7.1]
  def change
    create_enum :spotify_type, ['track', 'album', 'artist', 'playlist']

    create_table :spotify_ids do |t|
      t.string :spotify_id
      t.enum :spotify_type, enum_type: 'spotify_type', null: false
    end
  end
end
