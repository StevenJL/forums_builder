ForumBuilder::Application.routes.draw do

  match 'post/reply/new' => 'replies#create', :as => :post_new_reply, :via => :post

  match 'admintools' => 'admin#tools'

  devise_for :users

  root :to => "meta_forums#index"

  resources :meta_forum

  resources :super_forums

  resources :sub_forums do
    resources :posts
  end

  resources :user_profiles

  resources :posts do
    resources :replies, :only => [:edit, :destroy]
  end

end
