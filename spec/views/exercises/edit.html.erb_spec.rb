require 'spec_helper'

describe "exercises/edit" do
  before(:each) do
    @exercise = assign(:exercise, stub_model(Exercise,
      :id => 1,
      :title => "MyString",
      :exNumber => 1,
      :exType => "MyString",
      :recVideo => false
    ))
  end

  it "renders the edit exercise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", exercise_path(@exercise), "post" do
      assert_select "input#exercise_id[name=?]", "exercise[id]"
      assert_select "input#exercise_title[name=?]", "exercise[title]"
      assert_select "input#exercise_exNumber[name=?]", "exercise[exNumber]"
      assert_select "input#exercise_exType[name=?]", "exercise[exType]"
      assert_select "input#exercise_recVideo[name=?]", "exercise[recVideo]"
    end
  end
end
