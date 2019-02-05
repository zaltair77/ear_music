class AddTrackNumToSongs < ActiveRecord::Migration[5.0]
  def change
    add_column :songs, :trackno, :integer
  end
end
