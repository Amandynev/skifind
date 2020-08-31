class AddColumnsMMountainsToResorts < ActiveRecord::Migration[6.0]
  def change
    add_column :resorts, :mountains, :string
    add_column :resorts, :resort_website, :string
  end
end
