class RemoveCarInfo < ActiveRecord::Migration[5.2]
  def change
    remove_column  :drivers, :car_make
    remove_column  :drivers, :car_model
    remove_column  :drivers, :car_color
    remove_column  :drivers, :car_year
    remove_column  :drivers, :car_plate
    remove_column  :drivers, :insurance_provider
    remove_column  :drivers, :insurance_start
    remove_column  :drivers, :insurance_stop
    remove_column  :drivers, :application_state
  end
end
