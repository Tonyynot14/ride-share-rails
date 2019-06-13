class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.belongs_to :driver
      t.string :car_make
      t.string :car_model
      t.string :car_color
      t.integer :car_year
      t.string :car_plate
      t.integer :seat_belt_num
      t.string :insurance_provider
      t.date :insurance_start
      t.date :insurance_stop
      t.timestamps
    end
  end
end
