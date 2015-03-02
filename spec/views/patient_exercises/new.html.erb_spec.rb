require 'spec_helper'

describe "patient_exercises/new" do
  before(:each) do
    assign(:patient_exercise, stub_model(PatientExercise,
      :patient_id => 1,
      :exercise_type => "MyString",
      :exercise_id => 1,
      :is_submitted => false,
      :is_checked => false
    ).as_new_record)
  end

  it "renders new patient_exercise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", patient_exercises_path, "post" do
      assert_select "input#patient_exercise_patient_id[name=?]", "patient_exercise[patient_id]"
      assert_select "input#patient_exercise_exercise_type[name=?]", "patient_exercise[exercise_type]"
      assert_select "input#patient_exercise_exercise_id[name=?]", "patient_exercise[exercise_id]"
      assert_select "input#patient_exercise_is_submitted[name=?]", "patient_exercise[is_submitted]"
      assert_select "input#patient_exercise_is_checked[name=?]", "patient_exercise[is_checked]"
    end
  end
end
