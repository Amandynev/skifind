class AddColumnsSlopesToResorts < ActiveRecord::Migration[6.0]
  def change
    add_column :resorts, :slopes_title, :string
    add_column :resorts, :slopes_green, :string
    add_column :resorts, :slopes_blue, :string
    add_column :resorts, :slopes_red, :string
    add_column :resorts, :slopes_black, :string
  end
end
