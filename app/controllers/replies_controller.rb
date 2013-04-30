class RepliesController < ApplicationController

  def new
    @reply = Reply.new
  end

  def create
    user_id = current_user.id
    content = params[:reply][:content]
    post_id = params[:post_id]
    @reply = Reply.create(:post_id=>post_id, :content=>content, :user_id=>user_id, :upvotes=>0)
    respond_to do |format|
      format.json {render :json => @secret }
    end
  end

end