require 'rails_helper'

RSpec.describe "Generics", type: :request do
  describe "GET /generics" do
    it "works! (now write some real specs)" do
      get generics_path
      expect(response).to have_http_status(200)
    end
  end
end
