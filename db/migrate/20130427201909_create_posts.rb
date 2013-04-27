class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :forum_id
      t.integer :user_id
      t.string :title
      t.text :content
      t.integer :views
      t.integer :upvotes

      t.timestamps
    end
  end
end
