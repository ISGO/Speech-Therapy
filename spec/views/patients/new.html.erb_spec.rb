require 'spec_helper'

describe "patients/new" do
  before(:each) do
    assign(:patient, stub_model(Patient,
      :id => 1,
      :firstName => "MyString",
      :lastName => "MyString",
      :mail => "MyString",
      :therapist_id => 1,
      :address => "MyString",
      :hmo => "MyString",
      :phone => "MyString",
      :password => "MyString"
    ).as_new_record)
  end

  it "renders new patient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", patients_path, "post" do
      assert_select "input#patient_id[name=?]", "patient[id]"
      assert_select "input#patient_firstName[name=?]", "patient[firstName]"
      assert_select "input#patient_lastName[name=?]", "patient[lastName]"
      assert_select "input#patient_mail[name=?]", "patient[mail]"
      assert_select "input#patient_therapist_id[name=?]", "patient[therapist_id]"
      assert_select "input#patient_address[name=?]", "patient[address]"
      assert_select "input#patient_hmo[name=?]", "patient[hmo]"
      assert_select "input#patient_phone[name=?]", "patient[phone]"
      assert_select "input#patient_password[name=?]", "patient[password]"
    end
  end
end
