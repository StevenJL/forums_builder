ForumBuilder::Application.routes.draw do

  devise_for :users

  root :to => "meta_forums#index"

  resources :meta_forum

  resources :super_forums

  resources :sub_forums do
    resources :posts
  end



end
