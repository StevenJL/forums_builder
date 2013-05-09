class PostsController < ApplicationController

  def index
  end

  def show
    @metaforum = MetaForum.all.first
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

  def delete_view
    @posts = Post.all
  end

  def destroy
    posts_to_delete = params[:to_delete]
    posts_to_delete.map! { |id| id.to_i }
    posts_to_delete.each do |id|
      p = Post.find(id)
      p.destroy
    end
    redirect_to root_url
  end

end
