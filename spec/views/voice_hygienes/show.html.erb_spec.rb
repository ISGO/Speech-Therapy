require 'spec_helper'

describe "voice_hygienes/show" do
  before(:each) do
    @voice_hygiene = assign(:voice_hygiene, stub_model(VoiceHygiene,
      :id => 1,
      :title => "Title",
      :path_pdf => "Path Pdf"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Title/)
    rendered.should match(/Path Pdf/)
  end
end
