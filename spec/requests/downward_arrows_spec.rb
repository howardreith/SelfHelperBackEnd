require 'rails_helper'

RSpec.describe "DownwardArrows", type: :request do
  describe "GET /downward_arrows" do
    it "works! (now write some real specs)" do
      get downward_arrows_path
      expect(response).to have_http_status(200)
    end
  end
end
