require 'rails_helper'

RSpec.describe "Exposures", type: :request do
  describe "GET /exposures" do
    it "works! (now write some real specs)" do
      get exposures_path
      expect(response).to have_http_status(200)
    end
  end
end
