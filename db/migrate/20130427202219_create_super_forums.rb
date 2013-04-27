class CreateSuperForums < ActiveRecord::Migration
  def change
    create_table :super_forums do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
