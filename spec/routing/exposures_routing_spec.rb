require "rails_helper"

RSpec.describe ExposuresController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/exposures").to route_to("exposures#index")
    end


    it "routes to #show" do
      expect(:get => "/exposures/1").to route_to("exposures#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/exposures").to route_to("exposures#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/exposures/1").to route_to("exposures#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/exposures/1").to route_to("exposures#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/exposures/1").to route_to("exposures#destroy", :id => "1")
    end

  end
end
