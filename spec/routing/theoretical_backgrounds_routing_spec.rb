require "spec_helper"

describe TheoreticalBackgroundsController do
  describe "routing" do

    it "routes to #index" do
      get("/theoretical_backgrounds").should route_to("theoretical_backgrounds#index")
    end

    it "routes to #new" do
      get("/theoretical_backgrounds/new").should route_to("theoretical_backgrounds#new")
    end

    it "routes to #show" do
      get("/theoretical_backgrounds/1").should route_to("theoretical_backgrounds#show", :id => "1")
    end

    it "routes to #edit" do
      get("/theoretical_backgrounds/1/edit").should route_to("theoretical_backgrounds#edit", :id => "1")
    end

    it "routes to #create" do
      post("/theoretical_backgrounds").should route_to("theoretical_backgrounds#create")
    end

    it "routes to #update" do
      put("/theoretical_backgrounds/1").should route_to("theoretical_backgrounds#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/theoretical_backgrounds/1").should route_to("theoretical_backgrounds#destroy", :id => "1")
    end

  end
end
