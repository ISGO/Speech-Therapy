require 'spec_helper'

describe TherapistController do

  describe "GET 'newPatient'" do
    it "returns http success" do
      get 'newPatient'
      response.should be_success
    end
  end

end
