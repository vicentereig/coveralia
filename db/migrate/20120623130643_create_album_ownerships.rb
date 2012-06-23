class CreateAlbumOwnerships < ActiveRecord::Migration
  def change
    create_table :album_ownerships do |t|
      t.belongs_to :user
      t.belongs_to :album

      t.timestamps
    end
    add_index :album_ownerships, :user_id
    add_index :album_ownerships, :album_id
  end
end
