class AddColumnToResorts < ActiveRecord::Migration[6.0]
  def change
    add_column :resorts, :visitor_name, :string
  end
end
