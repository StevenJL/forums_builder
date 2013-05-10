class Post < ActiveRecord::Base
  attr_accessible :content, :forum_id, :title, :upvotes, :user_id, :views

  belongs_to :user
  belongs_to :forum, :class_name => "SubForum"
  has_many :replies
  has_many :users_who_upvoted, through: :post_upvotes

end
