class CreateSubForums < ActiveRecord::Migration
  def change
    create_table :sub_forums do |t|
      t.integer :parent_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
