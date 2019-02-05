class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :pic
      t.string :genre
      t.string :about
      t.string :albums
      t.string :songs

      t.timestamps
    end
  end
end
