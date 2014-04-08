HackerNewsClone::Application.routes.draw do
  root :to => 'links#index'
  resources :links
  resources :comments, :except => [:index, :show]
  resources :points, :only => [:new, :create]
end
