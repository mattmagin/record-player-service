class CreateTags < ActiveRecord::Migration[7.1]
  def change
    create_table :tags do |t|
      t.string :tag_code
      t.integer :identifier
      t.references :spotify_id, foreign_key: true, index: true
    end
  end
end
