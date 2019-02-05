class AddTracksToAlbums < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :tracks, :integer
  end
end
