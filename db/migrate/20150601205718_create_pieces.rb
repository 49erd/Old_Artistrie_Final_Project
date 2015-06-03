class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :title
      t.string :artist
      t.string :type_of
      t.string :image_url
      t.integer :likes
      t.integer :user_id
      t.integer :competition_id
      t.belongs_to :user
      t.belongs_to :competition

      t.timestamps null: false
    end
  end
end
