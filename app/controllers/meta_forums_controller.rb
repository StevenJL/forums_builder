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

end
