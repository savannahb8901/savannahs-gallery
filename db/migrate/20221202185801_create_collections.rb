class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections do |t|
      t.integer :item_id
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
