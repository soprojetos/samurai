Samurai::Engine.routes.draw do
  root :to => 'home#index'
  get '/links' => 'home#links'
  get '/seo_tags' => 'home#seotags'
  match '/seo_tags/:key' => 'home#edit', :as => :edit_tag, via: [:get, :post, :patch]
end
