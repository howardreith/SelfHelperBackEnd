require "rails_helper"

RSpec.describe ColumMethodsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/colum_methods").to route_to("colum_methods#index")
    end


    it "routes to #show" do
      expect(:get => "/colum_methods/1").to route_to("colum_methods#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/colum_methods").to route_to("colum_methods#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/colum_methods/1").to route_to("colum_methods#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/colum_methods/1").to route_to("colum_methods#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/colum_methods/1").to route_to("colum_methods#destroy", :id => "1")
    end

  end
end
