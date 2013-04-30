class RepliesController < ApplicationController

  def create
    content = params[:content]
    user_id = current_user.id
    post_id = params[:post_id]
    @reply = Reply.create(:post_id=>post_id, :content=>content, :user_id=>user_id)

  end

end
