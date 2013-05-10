class MetaForumsController < ApplicationController

  def index
    @meta_forum = MetaForum.first
    @superforums = SuperForum.all
    @subforums = {}
    @superforums.each do |superforum|
      @subforums[superforum.name] = superforum.sub_forums
    end
  end

  def admintools
  end

  def edit
    @meta_forum = MetaForum.first
  end

  def update
    @meta_forum = MetaForum.first
    @meta_forum.update_attributes(params[:meta_forum])
    redirect_to root_url
  end

end
