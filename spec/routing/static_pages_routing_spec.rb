require "spec_helper"

describe StaticPagesController do
  describe "routing" do

    it "routes to #index" do
      get("/").should route_to("static_pages#index")
    end

  end
end
