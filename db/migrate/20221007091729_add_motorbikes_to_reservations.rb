class AddMotorbikesToReservations < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :motorbike, null: false, foreign_key: true
  end
end
