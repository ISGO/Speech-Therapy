require 'spec_helper'

describe "exercises/index" do
  before(:each) do
    assign(:exercises, [
      stub_model(Exercise,
        :id => 1,
        :title => "Title",
        :exNumber => 2,
        :exType => "Ex Type",
        :recVideo => false
      ),
      stub_model(Exercise,
        :id => 1,
        :title => "Title",
        :exNumber => 2,
        :exType => "Ex Type",
        :recVideo => false
      )
    ])
  end

  it "renders a list of exercises" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Ex Type".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
