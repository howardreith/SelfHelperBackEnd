require "rails_helper"

RSpec.describe PublicRoutinesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/public_routines").to route_to("public_routines#index")
    end


    it "routes to #show" do
      expect(:get => "/public_routines/1").to route_to("public_routines#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/public_routines").to route_to("public_routines#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/public_routines/1").to route_to("public_routines#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/public_routines/1").to route_to("public_routines#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/public_routines/1").to route_to("public_routines#destroy", :id => "1")
    end

  end
end
