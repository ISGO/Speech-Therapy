require "spec_helper"

describe PatientExercisesController do
  describe "routing" do

    it "routes to #index" do
      get("/patient_exercises").should route_to("patient_exercises#index")
    end

    it "routes to #new" do
      get("/patient_exercises/new").should route_to("patient_exercises#new")
    end

    it "routes to #show" do
      get("/patient_exercises/1").should route_to("patient_exercises#show", :id => "1")
    end

    it "routes to #edit" do
      get("/patient_exercises/1/edit").should route_to("patient_exercises#edit", :id => "1")
    end

    it "routes to #create" do
      post("/patient_exercises").should route_to("patient_exercises#create")
    end

    it "routes to #update" do
      put("/patient_exercises/1").should route_to("patient_exercises#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/patient_exercises/1").should route_to("patient_exercises#destroy", :id => "1")
    end

  end
end
