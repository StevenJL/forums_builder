class SuperForum < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :sub_forums
end
