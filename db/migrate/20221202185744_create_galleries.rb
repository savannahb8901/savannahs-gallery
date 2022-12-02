class CreateGalleries < ActiveRecord::Migration[6.0]
  def change
    create_table :galleries do |t|
      t.integer :piece_id

      t.timestamps
    end
  end
end
