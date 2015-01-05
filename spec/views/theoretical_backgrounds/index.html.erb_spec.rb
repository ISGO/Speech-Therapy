require 'spec_helper'

describe "theoretical_backgrounds/index" do
  before(:each) do
    assign(:theoretical_backgrounds, [
      stub_model(TheoreticalBackground,
        :id => 1,
        :link => "Link",
        :pdf => "Pdf",
        :title => "Title"
      ),
      stub_model(TheoreticalBackground,
        :id => 1,
        :link => "Link",
        :pdf => "Pdf",
        :title => "Title"
      )
    ])
  end

  it "renders a list of theoretical_backgrounds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "Pdf".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
