class PostDownvotesController < ApplicationController

  def add_downvote
    p "made it to controller"
    PostDownvote.create(:user_id=>params[:user_id], :post_id=>params[:post_id])
    upvotes = Post.find(params[:post_id]).get_upvotes
    render :json => upvotes
  end

end
