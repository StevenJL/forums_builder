class RepliesController < ApplicationController

  def create

    p user_id = current_user.id
    p post_id = params[:post_id]
    p content = params[:content]
    @reply = Reply.new(:post_id=>post_id,:user_id=>user_id, :content=>content,
          :upvotes=>0)
    # send_back = {reply=>@reply,user=>@user}
    if @reply.save
      respond_to do |format|
        format.json { render :json => @reply }
        format.html { render :html => @reply }
      end
    else
      render :json => @reply.errors 
    end

  end

end



  # create_table "replies", :force => true do |t|
  #   t.integer  "post_id"
  #   t.integer  "reply_id"
  #   t.text     "content"
  #   t.integer  "user_id"
  #   t.integer  "upvotes"
  #   t.datetime "created_at", :null => false
  #   t.datetime "updated_at", :null => false
  # end