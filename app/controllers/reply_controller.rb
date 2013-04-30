class ReplyController < ApplicationController

  def create
    @reply = Reply.new(params[:reply])
    if @reply.save
      render :json => @reply, :status => 201
    else
      render :json => @json => {:created => false}, :status => 403
    end
  end

end
