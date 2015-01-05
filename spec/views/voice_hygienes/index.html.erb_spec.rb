require 'spec_helper'

describe "voice_hygienes/index" do
  before(:each) do
    assign(:voice_hygienes, [
      stub_model(VoiceHygiene,
        :id => 1,
        :title => "Title",
        :path_pdf => "Path Pdf"
      ),
      stub_model(VoiceHygiene,
        :id => 1,
        :title => "Title",
        :path_pdf => "Path Pdf"
      )
    ])
  end

  it "renders a list of voice_hygienes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Path Pdf".to_s, :count => 2
  end
end
