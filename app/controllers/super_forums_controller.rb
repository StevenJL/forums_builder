class SuperForumsController < ApplicationController

  def show
    @metaforum = MetaForum.first
    @superforum = SuperForum.find(params[:id])
    @subforums = @superforum.sub_forums
    @posts_hash = {}
    @subforums.each do |subforum|
      @posts_hash[subforum.name] = subforum.posts
    end
  end

  def new
    @super_forum = SuperForum.new
  end

  def create
    @super_forum = SuperForum.new(params[:super_forum])
    @super_forum.save
    redirect_to edit_super_forum_url(@super_forum)
  end

  def edit
    @super_forum = SuperForum(params[:id])
  end

end
