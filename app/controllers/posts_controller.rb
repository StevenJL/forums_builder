class PostsController < ApplicationController

  def index
  end

  def show
    @reply = Reply.new
    @sub_forum = SubForum.find(params[:sub_forum_id])
    @parent = @sub_forum.parent
    @post = Post.find(params[:id])
    @replies = @post.replies
    @directreplies = @replies.select {|reply| reply.reply_id == 0 || reply.reply_id.nil? }
  end

  def new
    @sub_forum = SubForum.find(params[:sub_forum_id])
    @parent = @sub_forum.parent
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    @post.user_id = current_user.id
    @post.upvotes = 0
    @post.views = 0
    @post.save
    @subforum = SubForum.find(params[:post][:forum_id])
    redirect_to sub_forum_post_url(@subforum, @post)
  end

end
