class SubForum < ActiveRecord::Base
  attr_accessible :description, :name, :parent_id

  belongs_to :parent, :class_name => "SuperForum"
  has_many :posts, :foreign_key => "forum_id"

end
