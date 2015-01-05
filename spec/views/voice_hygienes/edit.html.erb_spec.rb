require 'spec_helper'

describe "voice_hygienes/edit" do
  before(:each) do
    @voice_hygiene = assign(:voice_hygiene, stub_model(VoiceHygiene,
      :id => 1,
      :title => "MyString",
      :path_pdf => "MyString"
    ))
  end

  it "renders the edit voice_hygiene form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", voice_hygiene_path(@voice_hygiene), "post" do
      assert_select "input#voice_hygiene_id[name=?]", "voice_hygiene[id]"
      assert_select "input#voice_hygiene_title[name=?]", "voice_hygiene[title]"
      assert_select "input#voice_hygiene_path_pdf[name=?]", "voice_hygiene[path_pdf]"
    end
  end
end
