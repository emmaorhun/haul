class AddingStockToProducts < ActiveRecord::Migration[5.1]
  def up
    change_table :products do |t|
      t.column :stock, :integer
    end
  end

  def down
    t.drop_table products
  end

end
