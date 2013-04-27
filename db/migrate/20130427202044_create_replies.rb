class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.integer :post_id
      t.integer :reply_id
      t.text :content
      t.integer :user_id
      t.integer :upvotes

      t.timestamps
    end
  end
end
