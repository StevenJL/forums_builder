class AddUpvotesJoinTable < ActiveRecord::Migration

  def change
    
    create_table :post_upvotes do |t|
      t.integer :post_id
      t.integer :user_id
      t.timestamps
    end

    create_table :replies_upvotes do |t|
      t.integer :reply_id
      t.integer :user_id
      t.timestamps
    end

  end

end
