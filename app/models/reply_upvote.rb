class ReplyUpvote < ActiveRecord::Base

  attr_accessible :user_id, :reply_id

  belongs_to :user
  belongs_to :reply

  validates_uniqueness_of :user_id, :scope => :reply_id

end