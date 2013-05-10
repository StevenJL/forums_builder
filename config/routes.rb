ForumBuilder::Application.routes.draw do

  match 'post/reply/new' => 'replies#create', :as => :post_new_reply, :via => :post

  match 'admintools' => 'meta_forums#admintools'

  match 'delete_forums_view' => 'super_forums#delete_view'

  match 'delete_posts_view' => 'posts#delete_view'

  match 'delete_forums' => 'super_forums#destroy'

  match 'delete_posts' => 'posts#destroy'

  devise_for :users

  root :to => "meta_forums#index"

  resources :meta_forums

  resources :super_forums do
    resources :sub_forums, :only => [:new, :create]
  end

  resources :sub_forums do
    resources :posts
  end

  resources :user_profiles

  resources :posts do
    resources :replies, :only => [:edit, :destroy]
  end

end