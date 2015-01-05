require 'spec_helper'

describe "exercises/show" do
  before(:each) do
    @exercise = assign(:exercise, stub_model(Exercise,
      :id => 1,
      :title => "Title",
      :exNumber => 2,
      :exType => "Ex Type",
      :recVideo => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Title/)
    rendered.should match(/2/)
    rendered.should match(/Ex Type/)
    rendered.should match(/false/)
  end
end
