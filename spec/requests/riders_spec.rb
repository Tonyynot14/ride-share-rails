require 'rails_helper'

RSpec.describe "Api::V1::Riders", type: :request do
  describe "GET /api/v1/riders" do
    it "works! (now write some real specs)" do
      get api_v1_riders_index_path
      expect(response).to have_http_status(200)
    end
  end
end
