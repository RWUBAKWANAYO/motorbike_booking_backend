class ChangeColName < ActiveRecord::Migration[7.0]
  def change
    rename_column :motorbikes, :brand, :motor_name 
  end
end
