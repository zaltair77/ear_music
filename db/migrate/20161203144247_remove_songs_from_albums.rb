class RemoveSongsFromAlbums < ActiveRecord::Migration[5.0]
  def change
    remove_column :albums, :songs, :string
  end
end
