ForumBuilder::Application.routes.draw do

  match 'post/reply/new' => 'replies#create', :as => :post_new_reply, :via => :post

  devise_for :users

  root :to => "meta_forums#index"

  resources :meta_forum

  resources :super_forums

  resources :sub_forums do
    resources :posts
  end

  resources :users, :only => [:show]

  resources :posts do
    resources :replies, :only => [:edit, :destroy]
  end

end
