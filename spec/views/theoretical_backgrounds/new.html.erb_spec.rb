require 'spec_helper'

describe "theoretical_backgrounds/new" do
  before(:each) do
    assign(:theoretical_background, stub_model(TheoreticalBackground,
      :id => 1,
      :link => "MyString",
      :pdf => "MyString",
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new theoretical_background form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", theoretical_backgrounds_path, "post" do
      assert_select "input#theoretical_background_id[name=?]", "theoretical_background[id]"
      assert_select "input#theoretical_background_link[name=?]", "theoretical_background[link]"
      assert_select "input#theoretical_background_pdf[name=?]", "theoretical_background[pdf]"
      assert_select "input#theoretical_background_title[name=?]", "theoretical_background[title]"
    end
  end
end
