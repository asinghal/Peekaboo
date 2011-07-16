require 'spec_helper'

describe "pictures/index.html.erb" do
  before(:each) do
    assign(:pictures, [
      stub_model(Picture,
        :name => "Name",
        :small_img => "Small Img",
        :video => "Video",
        :audio => "Audio"
      ),
      stub_model(Picture,
        :name => "Name",
        :small_img => "Small Img",
        :video => "Video",
        :audio => "Audio"
      )
    ])
  end

  it "renders a list of pictures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Small Img".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Video".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Audio".to_s, :count => 2
  end
end
