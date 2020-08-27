class AddColumnPhotoToResorts < ActiveRecord::Migration[6.0]
  def change
    add_column :resorts, :photo_asset, :string
  end
end
