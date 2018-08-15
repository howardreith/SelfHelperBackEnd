require 'rails_helper'

RSpec.describe "ColumMethods", type: :request do
  describe "GET /colum_methods" do
    it "works! (now write some real specs)" do
      get colum_methods_path
      expect(response).to have_http_status(200)
    end
  end
end
