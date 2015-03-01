require 'spec_helper'

describe "patient_exercises/index" do
  before(:each) do
    assign(:patient_exercises, [
      stub_model(PatientExercise,
        :patient_id => 1,
        :exercise_type => "Exercise Type",
        :exercise_id => 2,
        :is_submitted => false,
        :is_checked => false
      ),
      stub_model(PatientExercise,
        :patient_id => 1,
        :exercise_type => "Exercise Type",
        :exercise_id => 2,
        :is_submitted => false,
        :is_checked => false
      )
    ])
  end

  it "renders a list of patient_exercises" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Exercise Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
