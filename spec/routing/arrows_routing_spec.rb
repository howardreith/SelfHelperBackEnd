require "rails_helper"

RSpec.describe ArrowsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/arrows").to route_to("arrows#index")
    end


    it "routes to #show" do
      expect(:get => "/arrows/1").to route_to("arrows#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/arrows").to route_to("arrows#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/arrows/1").to route_to("arrows#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/arrows/1").to route_to("arrows#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/arrows/1").to route_to("arrows#destroy", :id => "1")
    end

  end
end
