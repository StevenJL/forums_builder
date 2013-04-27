class AddAminModToUser < ActiveRecord::Migration
  def change

      add_column :users, :admin, :boolean, :default => false
      add_column :users, :moderator, :boolean, :default => false

      # if current_user.admin?
      # do something
      # end

  end
end
