class PostDownvote < ActiveRecord::Base

  attr_accessible :user_id, :post_id

  belongs_to :user
  belongs_to :post

  validates_uniqueness_of :user_id, :scope => :post_id

end