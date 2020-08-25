class AddColumnsToResorts < ActiveRecord::Migration[6.0]
  def change
    add_column :resorts, :roommate, :string
    add_column :resorts, :budget, :string
    add_column :resorts, :day_activities, :string
    add_column :resorts, :biological_clock, :string
    add_column :resorts, :accommodation, :string
    add_column :resorts, :spot, :string
    add_column :resorts, :night_activities, :string
    add_column :resorts, :expectations, :string
    add_column :resorts, :geocation, :string
    add_column :resorts, :kilometers, :string
  end
end
