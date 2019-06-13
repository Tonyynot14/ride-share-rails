class VehiclesController < ApplicationController
  def new
    @driver = Driver.find(params[:driver_id])
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.driver_id= params[:driver_id]
    if @vehicle.save
    redirect_to driver_path(params[:driver_id])
    else
      render 'new'
    end
  end

  def edit
    @vehicle = Vehicle.find(params[:id])

  end

  def update
    @vehicle = Vehicle.find(params[:id])
    if @vehicle.update(vehicle_params)
    redirect_to driver_path(@vehicle.driver_id)
    else
      render "edit"
    end

  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.destroy

  end

  private
  def vehicle_params
    params.require(:vehicle).permit(:car_make, :car_model,
       :car_color, :car_year, :seat_belt_num, :insurance_provider)
  end
end
