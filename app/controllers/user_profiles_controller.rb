class UserProfilesController < ApplicationController

  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
    @user_profile = @user.user_profile
    @posts = @user.posts
    @replies = @user.replies
  end

  def edit
    @user = User.find(params[:id])
    @user_profile = @user.user_profile
  end

end