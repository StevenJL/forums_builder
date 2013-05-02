class SuperForum < ActiveRecord::Base
  attr_accessible :description, :name, :sub_forums, :sub_forums_attributes

  has_many :sub_forums, :foreign_key => "parent_id", inverse_of: :parent
  accepts_nested_attributes_for :sub_forums
end
