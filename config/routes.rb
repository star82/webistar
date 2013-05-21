Webistar::Application.routes.draw do
  root :to => 'homepages#index'
  devise_for :users

  resources :rater
  resources :homepages do
    post :contact, :on => :collection
  end
  resources :galleries
  resources :comments
  resources :sliders
end
