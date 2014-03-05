require "spec_helper"

describe StaticPagesController do
  describe "routing" do

    it "routes to #index" do
      get("/main/index").should route_to("main#index")
    end

  end
end
