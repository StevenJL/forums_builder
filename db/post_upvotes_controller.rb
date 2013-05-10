class PostUpvotesController < ApplicationController

  def create
    user_id = params[:user_id]
    post_id = params[:post_id]
    PostUpvote.create(:user_id=>user_id, :post_id=>post_id)
    upvote_count = Post.find(post_id).get_upvotes
    p upvote_count
    render :json => upvote_count
  end

end
