class SonosRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :sonos_rooms do |t|
      t.string :name
    end
  end
end
