class PostsController < ApplicationController

  def index
  end

  def show
    @reply = Reply.new
    @sub_forum = SubForum.find(params[:sub_forum_id])
    @parent = @sub_forum.parent
    @post = Post.find(params[:id])
    @replies = @post.replies
  end

  def new
    @sub_forum = SubForum.find(params[:sub_forum_id])
    @parent = @sub_forum.parent
    @post = Post.new
  end

  def create
    sub_forum_id = params[:sub_forum_id]
    user_id = current_user.id
    title = params[:post][:title]
    content = params[:post][:content]
    @post = Post.create(:user_id=>user_id, :forum_id=>sub_forum_id, 
      :title=>title, :content=>content, :views=>1, :upvotes=>0)
    @subforum = SubForum.find(sub_forum_id)
    redirect_to sub_forum_post_url(@subforum, @post)
  end

end
