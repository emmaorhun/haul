class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|

      t.string :name
      t.references :mall

      t.timestamps

    end
  end
end
