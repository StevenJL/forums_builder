class AddPhotoToUser < ActiveRecord::Migration
  def up
    change_table :user_profiles do |t|
      t.attachment :avatar
    end
  end

  def down
    drop_attached_file :user_profiles, :avatar
  end
end
