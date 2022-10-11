class RemoveCategIdFromMotorbikes < ActiveRecord::Migration[7.0]
  def change
    remove_column :motorbikes, :categID, :string
  end
end
