require "rails_helper"

RSpec.describe DownwardArrowsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/downward_arrows").to route_to("downward_arrows#index")
    end


    it "routes to #show" do
      expect(:get => "/downward_arrows/1").to route_to("downward_arrows#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/downward_arrows").to route_to("downward_arrows#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/downward_arrows/1").to route_to("downward_arrows#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/downward_arrows/1").to route_to("downward_arrows#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/downward_arrows/1").to route_to("downward_arrows#destroy", :id => "1")
    end

  end
end
