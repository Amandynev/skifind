class AddColumnsBisToResorts < ActiveRecord::Migration[6.0]
  def change
    add_column :resorts, :altitude, :string
    add_column :resorts, :opening_time, :string
    add_column :resorts, :kids_garden, :string
    add_column :resorts, :snowpark, :string
    add_column :resorts, :free_carpark, :string
  end
end
