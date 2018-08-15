require 'rails_helper'

RSpec.describe "Arrows", type: :request do
  describe "GET /arrows" do
    it "works! (now write some real specs)" do
      get arrows_path
      expect(response).to have_http_status(200)
    end
  end
end
