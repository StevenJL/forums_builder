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
    5.times { @super_forum.sub_forums.build }
  end

  def create
    params[:super_forum][:sub_forums_attributes] = params[:super_forum][:sub_forums_attributes].select {|key, value| value["name"] !=""}
    @super_forum = SuperForum.new(params[:super_forum])
    @super_forum.save
    redirect_to root_url
  end

  def edit
    @super_forum = SuperForum(params[:id])
  end

  def delete_view 
    @super_forums = SuperForum.all
  end

  def destroy
    forums_to_delete = params[:to_delete]
    forums_to_delete.map! { |id| id.to_i }
    forums_to_delete.each do |id|
      sf = SuperForum.find(id)
      all_sub_forums = sf.sub_forums
      all_sub_forums.each do |subforum|
        subforum.posts.each do |post|
          post.replies.each do |reply|
            reply.destroy
          end
          post.destroy
        end
        subforum.destroy
      end
      sf.destroy
    end
    redirect_to root_url
  end

end