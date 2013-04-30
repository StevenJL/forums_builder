class PostsController < ApplicationController

  def index
  end

  def show
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

end
