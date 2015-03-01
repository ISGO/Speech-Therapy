require 'spec_helper'

describe "patient_exercises/show" do
  before(:each) do
    @patient_exercise = assign(:patient_exercise, stub_model(PatientExercise,
      :patient_id => 1,
      :exercise_type => "Exercise Type",
      :exercise_id => 2,
      :is_submitted => false,
      :is_checked => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Exercise Type/)
    rendered.should match(/2/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
