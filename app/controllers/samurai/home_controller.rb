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


    def edit
      @tags = SeoTag.where(key: params[:key]).first_or_initialize

      if params[:seo_tag]
        @tags.update_attributes(tag_params[:seo_tag])
      end
    end
  
    def tag_params
      params.permit({seo_tag: [:title, :description, :canonical]})
    end
  end
end

