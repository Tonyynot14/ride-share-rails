require "grape-swagger"

module Api
  module V1
    class Base < Grape::API

      mount Api::V1::Drivers
      mount Api::V1::Riders
      mount Api::V1::Rides
      mount Api::V1::ScheduleWindows
      mount Api::V1::Locations
      mount Api::V1::Sessions
      mount Api::V1::Vehicles

      add_swagger_documentation(
          api_version: "v1",
          hide_documentation_path: true,
          mount_path: "/api/v1/swagger_doc",
          hide_format: true
      )
    end
  end
end
