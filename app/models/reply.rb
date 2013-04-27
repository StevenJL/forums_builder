class Reply < ActiveRecord::Base
  attr_accessible :content, :post_id, :reply_id, :upvotes, :user_id

  belongs_to :user
  belongs_to :post
  belongs_to :reply

end
