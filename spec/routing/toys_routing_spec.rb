require "spec_helper"

describe ToysController do
  describe "routing" do

    it "routes to #index" do
      get("/toys").should route_to("toys#index")
    end

    it "routes to #new" do
      get("/toys/new").should route_to("toys#new")
    end

    it "routes to #show" do
      get("/toys/1").should route_to("toys#show", :id => "1")
    end

    it "routes to #edit" do
      get("/toys/1/edit").should route_to("toys#edit", :id => "1")
    end

    it "routes to #create" do
      post("/toys").should route_to("toys#create")
    end

    it "routes to #update" do
      put("/toys/1").should route_to("toys#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/toys/1").should route_to("toys#destroy", :id => "1")
    end

  end
end
