class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :password
      t.string :pic
      t.string :cover_image
      t.string :link
      t.integer :last_played_id

      t.timestamps
    end
  end
end
