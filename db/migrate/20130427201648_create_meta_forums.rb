class CreateMetaForums < ActiveRecord::Migration
  def change
    create_table :meta_forums do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
