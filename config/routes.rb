ForumBuilder::Application.routes.draw do

  devise_for :users

  root :to => "meta_forums#index"

end
