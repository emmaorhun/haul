class CreateVariables < ActiveRecord::Migration[5.1]
  def change
    create_table :variables do |t|

      t.string :type_of_variable
      t.string :option

      t.references :store
      t.references :product
      t.timestamps
    end
  end
end
