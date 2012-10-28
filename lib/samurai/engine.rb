module Samurai
  class Engine < ::Rails::Engine
    isolate_namespace Samurai
    initializer "samurai.tags" do
      ActionView::Base.send :include, Samurai::Tags
    end
  end
end
