Samurai::Engine.routes.draw do
  root :to => 'home#index'
  get '/links' => 'home#links'
  get '/seo_tags' => 'home#seotags'
  get '/seo_tags/:key' => 'home#edit', :as => :edit_tag
end
