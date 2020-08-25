class CreatePreferences < ActiveRecord::Migration[6.0]
  def change
    create_table :preferences do |t|
      t.integer :user_id
      t.integer :resort_id
      t.string :visitor_name
      t.string :roommate
      t.string :budget
      t.string :day_activities
      t.string :biological_clock
      t.string :accommodation
      t.string :spot
      t.string :night_activities
      t.string :expectations
      t.string :geocation
      t.string :kilometers

      t.timestamps
    end
  end
end
