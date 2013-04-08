Webistar::Application.routes.draw do
  root :to => 'homepages#index'
  resources :homepages
  resources :gallery
  resources :comments
end
