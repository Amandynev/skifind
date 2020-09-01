class AddGeocodingToPreferences < ActiveRecord::Migration[6.0]
  def change
    add_column :preferences, :latitude, :float
    add_column :preferences, :longitude, :float
  end
end
