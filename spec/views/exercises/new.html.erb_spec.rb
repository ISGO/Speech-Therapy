require 'spec_helper'

describe "exercises/new" do
  before(:each) do
    assign(:exercise, stub_model(Exercise,
      :id => 1,
      :title => "MyString",
      :exNumber => 1,
      :exType => "MyString",
      :recVideo => false
    ).as_new_record)
  end

  it "renders new exercise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", exercises_path, "post" do
      assert_select "input#exercise_id[name=?]", "exercise[id]"
      assert_select "input#exercise_title[name=?]", "exercise[title]"
      assert_select "input#exercise_exNumber[name=?]", "exercise[exNumber]"
      assert_select "input#exercise_exType[name=?]", "exercise[exType]"
      assert_select "input#exercise_recVideo[name=?]", "exercise[recVideo]"
    end
  end
end
