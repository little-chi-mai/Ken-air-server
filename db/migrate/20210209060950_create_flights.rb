class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.text :flight_number
      t.text :origin
      t.text :destination
      t.date :date

      t.timestamps
    end
  end
end
