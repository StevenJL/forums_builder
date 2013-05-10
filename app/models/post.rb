class Post < ActiveRecord::Base
  attr_accessible :content, :forum_id, :title, :upvotes, :user_id, :views

  belongs_to :user
  belongs_to :forum, :class_name => "SubForum"
  has_many :replies
  has_many :post_upvotes
  has_many :post_downvotes
  has_many :users_who_upvoted, through: :post_upvotes, :source => :user
  has_many :users_who_downvoted, through: :post_downvotes, :source => :user

  def get_upvotes
    users_who_upvoted.length - users_who_downvoted.length
  end

end