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

end
