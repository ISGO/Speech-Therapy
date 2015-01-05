require 'spec_helper'

describe "patients/index" do
  before(:each) do
    assign(:patients, [
      stub_model(Patient,
        :id => 1,
        :firstName => "First Name",
        :lastName => "Last Name",
        :mail => "Mail",
        :therapist_id => 2,
        :address => "Address",
        :hmo => "Hmo",
        :phone => "Phone",
        :password => "Password"
      ),
      stub_model(Patient,
        :id => 1,
        :firstName => "First Name",
        :lastName => "Last Name",
        :mail => "Mail",
        :therapist_id => 2,
        :address => "Address",
        :hmo => "Hmo",
        :phone => "Phone",
        :password => "Password"
      )
    ])
  end

  it "renders a list of patients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Mail".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Hmo".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
