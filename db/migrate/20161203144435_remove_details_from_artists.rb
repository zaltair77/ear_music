class RemoveDetailsFromArtists < ActiveRecord::Migration[5.0]
  def change
    remove_column :artists, :albums, :string
    remove_column :artists, :songs, :string
  end
end
