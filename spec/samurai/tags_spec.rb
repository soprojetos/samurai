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


end
