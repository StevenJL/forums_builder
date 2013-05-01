class RepliesController < ApplicationController

  def create
    @reply = Reply.new(params[:reply])
    @reply.upvotes = 0
    @reply.user_id = current_user.id
    @reply.save
    @post = Post.find(params[:reply][:post_id])
    redirect_to sub_forum_post_url(@post.forum, @post)
  end

end

  # create_table "replies", :force => true do |t|
  #   t.integer  "post_id"
  #   t.integer  "reply_id"
  #   t.text     "content"
  #   t.integer  "user_id"
  #   t.integer  "upvotes"
  #   t.datetime "created_at", :null => false
  #   t.datetime "updated_at", :null => false
  # end