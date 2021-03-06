require 'spec_helper'

describe "pictures/new.html.erb" do
  before(:each) do
    assign(:picture, stub_model(Picture,
      :name => "MyString",
      :small_img => "MyString",
      :video => "MyString",
      :audio => "MyString"
    ).as_new_record)
  end

  it "renders new picture form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pictures_path, :method => "post" do
      assert_select "input#picture_name", :name => "picture[name]"
      assert_select "input#picture_small_img", :name => "picture[small_img]"
      assert_select "input#picture_video", :name => "picture[video]"
      assert_select "input#picture_audio", :name => "picture[audio]"
    end
  end
end
