Webistar::Application.routes.draw do
  root :to => 'homepages#index'
  devise_for :users

  match '/rate' => 'rater#create', :as => 'rate'
  resources :homepages
  resources :galleries
  resources :comments
  resources :sliders
end
