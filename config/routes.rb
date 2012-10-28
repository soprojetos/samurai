Samurai::Engine.routes.draw do
  get "home/index"

  root :to => "home#index"
  match '/links' => "home#links"
  match '/seo_tags' => "home#seotags"
  match '/seo_tags/:key' => "home#edit", :as => :edit_tag

end
