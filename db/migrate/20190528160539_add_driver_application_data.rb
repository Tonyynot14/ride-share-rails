class AddDriverApplicationData < ActiveRecord::Migration[5.2]
  def change
    add_column  :drivers, :car_year, :int
    add_column  :drivers, :car_plate, :string
    add_column  :drivers, :insurance_provider, :string
    add_column  :drivers, :insurance_start, :datetime
    add_column  :drivers, :insurance_stop, :datetime
    add_column  :drivers, :application_state, :string
  end
end
