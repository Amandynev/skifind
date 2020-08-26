class RemoveColumnsToPreferences < ActiveRecord::Migration[6.0]
  def change
    remove_column :preferences, :user_id
    remove_column :preferences, :resort_id
  end
end
