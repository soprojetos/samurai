require 'spec_helper'

include Samurai::Tags
include ActionView::Helpers::TagHelper


describe "::Tags" do

  it "#seo_title" do
    seo_title("website").should == content_tag(:title, "website")
  end

  it "#hold_tag" do
    hold_tag(:title, 'website').should == seo_title("website")
  end


  it "#static?" do
    static?(:root).should be_true
  end

  it "#attribute_and_size" do
    attribute_and_size("Soprojetos - @title(17)").should == {"title" => 17}
    attribute_and_size("Soprojetos - @title(17),@description(5)").should == {"title" => 17, "description"=> 5}

  end


  it "seo_meta_model" do

  end


end
