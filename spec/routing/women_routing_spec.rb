require "rails_helper"

RSpec.describe WomenController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/women").to route_to("women#index")
    end

    it "routes to #new" do
      expect(:get => "/women/new").to route_to("women#new")
    end

    it "routes to #show" do
      expect(:get => "/women/1").to route_to("women#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/women/1/edit").to route_to("women#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/women").to route_to("women#create")
    end

    it "routes to #update" do
      expect(:put => "/women/1").to route_to("women#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/women/1").to route_to("women#destroy", :id => "1")
    end

  end
end
