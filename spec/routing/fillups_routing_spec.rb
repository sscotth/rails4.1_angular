require "spec_helper"

describe FillupsController do
  describe "routing" do

    it "routes to #index" do
      get("/fillups").should route_to("fillups#index")
    end

    it "routes to #new" do
      get("/fillups/new").should route_to("fillups#new")
    end

    it "routes to #show" do
      get("/fillups/1").should route_to("fillups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fillups/1/edit").should route_to("fillups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fillups").should route_to("fillups#create")
    end

    it "routes to #update" do
      put("/fillups/1").should route_to("fillups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fillups/1").should route_to("fillups#destroy", :id => "1")
    end

  end
end
