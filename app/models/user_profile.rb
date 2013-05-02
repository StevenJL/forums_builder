class UserProfile < ActiveRecord::Base
  attr_accessible :about_me, :birth_date, :location, :name, 
    :signature, :user_id, :avatar

  belongs_to :user

  has_attached_file :avatar, :styles => {
    :big => "300x300>",
    :thumb => "100x100>" },
    :default_url => "/images/:style/missing.png"

end
