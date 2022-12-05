class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections do |t|
      t.text :description
      t.string :name
      t.string :month
      t.integer :item_id

      t.timestamps
    end
  end
end

