class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :user_id
      t.string :name
      t.string :location
      t.date :birth_date
      t.text :about_me
      t.string :signature

      t.timestamps
    end
  end
end
