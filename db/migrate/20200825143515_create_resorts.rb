class CreateResorts < ActiveRecord::Migration[6.0]
  def change
    create_table :resorts do |t|
      t.string :resort_name
      t.string :resort_address
      t.text :resort_description

      t.timestamps
    end
  end
end
