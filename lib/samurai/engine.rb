module Samurai
  class Engine < ::Rails::Engine
    isolate_namespace Samurai
    initializer "shiny-ninja.facebook" do
      ActionView::Base.send :include, Samurai::Tags
    end
  end
end
