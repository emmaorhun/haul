class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :street_address
      t.string :province
      t.string :city
      t.string :postal_code

      t.references :mall
      t.timestamps
    end
  end
end
