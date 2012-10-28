require 'spec_helper'

include Samurai::Tags
include ActionView::Helpers::CaptureHelper


describe "::Tags" do

  it "#seo_title" do
    seo_title("website").should == content_tag(:title, "website")
  end

end
