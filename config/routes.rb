ForumBuilder::Application.routes.draw do

  devise_for :users

  root :to => "meta_forums#index"

  resources :meta_forum
  
  resources :users

  resources :posts do
    resources :replies
  end

  resources :sub_forums do
    resources :posts
  end

  resources :super_forums do
    resources :sub_forums
  end


end
