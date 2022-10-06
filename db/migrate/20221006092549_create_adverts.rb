class CreateAdverts < ActiveRecord::Migration[7.0]
  def change
    create_table :adverts do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
