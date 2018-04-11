class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.references :user
      t.timestamps
    end

    create_join_table :carts, :products do |t|

    end

  end
end
