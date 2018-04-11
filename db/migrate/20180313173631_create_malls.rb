class CreateMalls < ActiveRecord::Migration[5.1]
  def change
    create_table :malls do |t|
      t.string :name
      t.timestamps
    end
  end
end

