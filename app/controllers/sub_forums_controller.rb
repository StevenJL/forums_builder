class SubForumsController < ApplicationController

  def show
    @metaforum = MetaForum.first
    @subforum = SubForum.find(params[:id])
    @parent = @subforum.parent
    @posts = @subforum.posts
  end

end
