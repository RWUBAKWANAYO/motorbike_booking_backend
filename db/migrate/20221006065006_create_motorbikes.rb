class CreateMotorbikes < ActiveRecord::Migration[7.0]
  def change
    create_table :motorbikes do |t|
      t.string :brand
      t.string :year
      t.references :category, null: false, foreign_key: true
      t.string :image
      t.integer :price

      t.timestamps
    end
  end
end
