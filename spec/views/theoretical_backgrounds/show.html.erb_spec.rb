require 'spec_helper'

describe "theoretical_backgrounds/show" do
  before(:each) do
    @theoretical_background = assign(:theoretical_background, stub_model(TheoreticalBackground,
      :id => 1,
      :link => "Link",
      :pdf => "Pdf",
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Link/)
    rendered.should match(/Pdf/)
    rendered.should match(/Title/)
  end
end
