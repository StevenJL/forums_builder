class SuperForum < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :sub_forums, :foreign_key => "parent_id"
end
