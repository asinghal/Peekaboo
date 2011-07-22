require 'spec_helper'

describe "pictures/show.html.erb" do
  before(:each) do
    @message = assign(:message, "Good")
    @picture = assign(:picture, stub_model(Picture,
      :name => "Name",
      :small_img => "Small Img",
      :video => "Video",
      :audio => "Audio"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Small Img/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Video/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Audio/)
  end
end
