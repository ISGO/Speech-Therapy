require 'spec_helper'

describe "TheoreticalBackgrounds" do
  describe "GET /theoretical_backgrounds" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get theoretical_backgrounds_path
      response.status.should be(200)
    end
  end
end
