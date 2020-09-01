class AddColumnLogoToResorts < ActiveRecord::Migration[6.0]
  def change
    add_column :resorts, :logo_asset, :string
  end
end
