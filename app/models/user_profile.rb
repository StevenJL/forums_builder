class UserProfile < ActiveRecord::Base
  attr_accessible :about_me, :birth_date, :location, :name, :signature, :user_id

  belongs_to :user

end
