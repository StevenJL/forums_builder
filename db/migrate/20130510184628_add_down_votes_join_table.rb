class AddDownVotesJoinTable < ActiveRecord::Migration

  def change
    
    create_table :post_downvotes do |t|
      t.integer :post_id
      t.integer :user_id
      t.timestamps
    end

    create_table :replies_downvotes do |t|
      t.integer :reply_id
      t.integer :user_id
      t.timestamps
    end

  end


end
