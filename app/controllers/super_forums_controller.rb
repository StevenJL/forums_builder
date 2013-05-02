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
    10.times { @super_forum.sub_forums.build }
  end

  def create
    @super_forum = SuperForum.new(params[:super_forum])
    @super_forum.save
    redirect_to root_url
  end

  def edit
    @super_forum = SuperForum(params[:id])
  end

end