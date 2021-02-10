class CreateFlightReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :flight_reservations do |t|
      t.integer :user_id
      t.integer :flight_id
      t.text :seat_id

      t.timestamps
    end
  end
end
