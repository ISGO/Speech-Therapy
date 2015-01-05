require "spec_helper"

describe VoiceHygienesController do
  describe "routing" do

    it "routes to #index" do
      get("/voice_hygienes").should route_to("voice_hygienes#index")
    end

    it "routes to #new" do
      get("/voice_hygienes/new").should route_to("voice_hygienes#new")
    end

    it "routes to #show" do
      get("/voice_hygienes/1").should route_to("voice_hygienes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/voice_hygienes/1/edit").should route_to("voice_hygienes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/voice_hygienes").should route_to("voice_hygienes#create")
    end

    it "routes to #update" do
      put("/voice_hygienes/1").should route_to("voice_hygienes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/voice_hygienes/1").should route_to("voice_hygienes#destroy", :id => "1")
    end

  end
end
