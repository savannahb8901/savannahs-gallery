class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.string :piece_id
      t.integer :collection_id
      t.integer :item_id

      t.timestamps
    end
  end
end
