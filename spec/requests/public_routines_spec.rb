require 'rails_helper'

RSpec.describe "PublicRoutines", type: :request do
  describe "GET /public_routines" do
    it "works! (now write some real specs)" do
      get public_routines_path
      expect(response).to have_http_status(200)
    end
  end
end
