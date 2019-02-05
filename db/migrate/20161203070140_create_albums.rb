class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :artist
      t.integer :year
      t.string :songs
      t.string :artwork

      t.timestamps
    end
  end
end
