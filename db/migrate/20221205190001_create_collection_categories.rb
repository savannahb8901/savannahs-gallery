class CreateCollectionCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :collection_categories do |t|
      t.integer :collection_id
      t.integer :category_id

      t.timestamps
    end
  end
end
