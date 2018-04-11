class CreateProductProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :product_profiles do |t|

      t.string :name
      t.text :description

      t.references :product

      t.timestamps
    end
  end
end
