class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :caption
      t.string :image
      t.integer :collection_id
      t.integer :comments_count
      t.integer :likes_count

      t.timestamps
    end
  end
end
