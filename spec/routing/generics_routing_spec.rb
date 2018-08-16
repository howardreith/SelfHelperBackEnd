require "rails_helper"

RSpec.describe GenericsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/generics").to route_to("generics#index")
    end


    it "routes to #show" do
      expect(:get => "/generics/1").to route_to("generics#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/generics").to route_to("generics#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/generics/1").to route_to("generics#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/generics/1").to route_to("generics#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/generics/1").to route_to("generics#destroy", :id => "1")
    end

  end
end
