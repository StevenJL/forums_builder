class RepliesController < ApplicationController

  def create
    user_id = current_user.id
    post_id = params[:post_id]
    content = params[:reply][:content]
    Reply.create(:post_id=>post_id,:user_id=>user_id, :content=>content,
          :upvotes=>0)
    @post = Post.find(post_id)
    @subforum = @post.forum
    redirect_to sub_forum_post_url(@subforum, @post)
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