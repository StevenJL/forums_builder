class Reply < ActiveRecord::Base
  attr_accessible :content, :post_id, :reply_id, :upvotes, :user_id
end
