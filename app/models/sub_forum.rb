class SubForum < ActiveRecord::Base
  attr_accessible :description, :name, :parent_id

  belongs_to :parent, :class_name => "SuperForum"

end
