class RepliesController < ApplicationController

# {"content"=>"Get me out of here!", "post_reply_id"=>"reply_id 4", "controller"=>"replies", "action"=>"create"}

  def reply_post_parse(string)
    if string.include?('post')
      [string.split().last , nil]
    elsif string.include?('reply')
      [nil, string.split().last]
    end
  end

  def create
    post_id, reply_id = reply_post_parse(params[:post_reply_id])
    user_id = current_user.id
    content = params[:content]
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