require_dependency "samurai/application_controller"

module Samurai
  class HomeController < ApplicationController
    def index
    end

    def links
      @links = Url.all
    end


    def seotags
      @samurai = Samurai::PerformTags.new
      @tags = @samurai.record
      render "seo_tags"
    end
  end
end
