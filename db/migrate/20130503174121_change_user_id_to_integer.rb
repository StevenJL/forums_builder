class ChangeUserIdToInteger < ActiveRecord::Migration
  def up
    change_column :user_profiles, :user_id, :integer
  end

  def down
    change_column :user_profiles, :user_id, :string
  end
end
