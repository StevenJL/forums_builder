class SuperForumsController < ApplicationController

  def show
    @superforum = SuperForum.find(params[:id])
  end

end
