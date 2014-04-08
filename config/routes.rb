HackerNewsClone::Application.routes.draw do
  root :to => 'links#index'
  resources :links
  resources :comments, :except => [:new, :create, :edit, :index, :destroy, :update, :show]
end
