require 'spec_helper'

describe "patients/show" do
  before(:each) do
    @patient = assign(:patient, stub_model(Patient,
      :id => 1,
      :firstName => "First Name",
      :lastName => "Last Name",
      :mail => "Mail",
      :therapist_id => 2,
      :address => "Address",
      :hmo => "Hmo",
      :phone => "Phone",
      :password => "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Mail/)
    rendered.should match(/2/)
    rendered.should match(/Address/)
    rendered.should match(/Hmo/)
    rendered.should match(/Phone/)
    rendered.should match(/Password/)
  end
end
