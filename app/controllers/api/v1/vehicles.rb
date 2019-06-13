module Api
  module V1
    class Vehicles < Grape::API
      include Api::V1::Defaults

      helpers SessionHelpers
      helpers VehicleHelpers


      before do
        error!('Unauthorized', 401) unless require_login!
      end



    #Method to create application for user, requires information for vehicle and updates state of vehicle to pending
      desc "Create Vehicle/Start application"
      params do
        requires :vehicle, type: JSON do
          requires :car_make, type: String, desc: " Car Manufactor of vehicle"
          requires :car_model, type: String, desc: " Car Model of vehicle"
          requires :car_year, type: Integer, desc: " Car Year of vehicle"
          requires :car_color, type: String, desc: " Car Color of vehicle"
          requires :car_plate, type: String, desc: " Car plate of vehicle"
          requires :seat_belt_num, type: Integer, desc: " Car plate of vehicle"
          requires :insurance_provider, type: String, desc: " Insurance Provider for vehicle"
          requires :insurance_start, type: Date, desc: " Insurance start date"
          requires :insurance_stop, type: Date, desc: " Insurance start date"
        end
      end
      post "vehicles" do
        driver = current_driver

          vehicle = Vehicle.new
          vehicle.attributes = params[:vehicle]
          vehicle.driver_id = current_driver.id

            if vehicle.save
              if(!driver.application_state = "pending" || !driver.application_state ="accepted")
                driver.application_state ="pending"
                driver.save
              end
              render vehicle
            end

        end


        desc "Return a vehicle with a given id"
        params do
           requires :id, type: Integer, desc: "ID of vehicle"
        end
        get "vehicle", root: :vehicle do
          if drivers_vehicle(params[:id])
            vehicle = Vehicle.find(params[:id])
            return vehicle

          else
            #Return Not authorized, not formatted
            status 401
            render "Not Authorized"
          end
        end


        desc "Return a vehicles of current  driver"
        params do

        end
        get "vehicles", root: :vehicle do
          driver = current_driver
          render driver.vehicles

        end


        desc "Update a vehicle with a given id"
        params do
          requires :vehicle, type: JSON do
            requires :id, type: Integer, desc: "ID of vehicle"
            optional :car_make, type: String, desc: " Car Manufactor of vehicle"
            optional :car_model, type: String, desc: " Car Model of vehicle"
            optional :car_year, type: Integer, desc: " Car Year of vehicle"
            optional :car_color, type: String, desc: " Car Color of vehicle"
            optional :car_plate, type: String, desc: " Car plate of vehicle"
            optional :seat_belt_num, type: Integer, desc: " Car plate of vehicle"
            optional :insurance_provider, type: String, desc: " Insurance Provider for vehicle"
            optional :insurance_start, type: Date, desc: " Insurance start date"
            optional :insurance_stop, type: Date, desc: " Insurance start date"
          end
        end
        put "vehicles" do
          if  drivers_vehicle(params[:vehicle][:id])
            vehicle = Vehicle.find(params[:vehicle][:id])
            vehicle.attributes = (params[:vehicle])
            if vehicle.save
              render vehicle
            else
              render vehicle.errors
            end

          else
            status 401
            render "Not Authorized"
             params[:vehicle][:id]
          end
        end


        desc "Delete a vehicle with a given id"
        params do
          requires :id, type: Integer, desc: "ID of vehicle"

        end
        delete "vehicles" do
          if drivers_vehicle(params[:id])
            vehicle = Vehicle.find(params[:id])
            if vehicle.destroy != nil
              return { sucess:true }
            end
          else
            status 401
            render "Not Authorized"
          end
        end
      end
    end
  end
