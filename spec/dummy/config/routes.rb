Rails.application.routes.draw do

  resources :posts

  root :to => "home#index"

  mount Samurai::Engine => "/samurai"
end
