module Api
  module V1
    module VehicleHelpers

      #Method to see if logged in user should have access to vehicle.
      def drivers_vehicle(id)
        driver = current_driver
        driver.vehicles.each do |vehicle|
        
          if vehicle.id == id
            return true
          end
        end
        return false
      end
    end
  end
end
