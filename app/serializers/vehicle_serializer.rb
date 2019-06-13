class VehicleSerializer < ActiveModel::Serializer

  attributes :id,:driver_id, :car_make, :car_model, :car_year,:car_color,
              :car_plate, :seat_belt_num, :insurance_provider, :insurance_start, :insurance_stop
  belongs_to :driver


end
