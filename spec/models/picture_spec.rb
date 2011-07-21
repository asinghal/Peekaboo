require 'spec_helper'

describe Picture do
  
  describe "random size check" do
    Picture.delete_all
    Factory :picture
    Factory :picture
    Factory :picture
    Factory :picture
    Factory :picture
    
    # created 5 records, but the configured behaviour should only pick 3
    # cant predict which ones as the pick is random
    pictures = Picture.pickRandom()
    
    pictures.size.should == 3
  end
  
  describe "random quality check" do
    
    Picture.delete_all
    pic1 = Factory :picture
    pic2 = Factory :picture
    pic3 = Factory :picture
    
    pictures = Picture.pickRandom()
    
    pictures.include?(pic1).should == true
    pictures.include?(pic2).should == true
    pictures.include?(pic3).should == true
  end
end
