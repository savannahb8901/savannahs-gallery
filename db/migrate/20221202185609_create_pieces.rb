class CreatePieces < ActiveRecord::Migration[6.0]
  def change
    create_table :pieces do |t|
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
