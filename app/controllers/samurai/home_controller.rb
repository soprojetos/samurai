require_dependency "samurai/application_controller"

module Samurai
  class HomeController < ApplicationController
    def index
    end

    def links
      @links = Url.all
    end

  end
end
