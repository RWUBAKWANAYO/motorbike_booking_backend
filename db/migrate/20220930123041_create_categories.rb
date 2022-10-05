class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :categname
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
