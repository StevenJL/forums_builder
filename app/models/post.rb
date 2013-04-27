class Post < ActiveRecord::Base
  attr_accessible :content, :forum_id, :title, :upvotes, :user_id, :views
end
