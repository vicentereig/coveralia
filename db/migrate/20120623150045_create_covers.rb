class CreateCovers < ActiveRecord::Migration
  def change
    create_table :covers do |t|
      t.belongs_to :album_ownership
      t.string :image
      t.timestamps
    end
    add_index :covers, :album_ownership_id
  end
end
