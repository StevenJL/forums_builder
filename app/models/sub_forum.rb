class SubForum < ActiveRecord::Base
  attr_accessible :description, :name, :parent_id, :parent

  belongs_to :parent, :class_name => "SuperForum", inverse_of: :sub_forums
  has_many :posts, :foreign_key => "forum_id"

end 
