class CreateAtms < ActiveRecord::Migration[5.2]
  def change
    create_table :atms do |t|
      t.string :machine_number
      t.string :address
      t.integer :one
      t.integer :two
      t.integer :five
      t.integer :ten
      t.integer :twenty_five
      t.integer :fifty
      t.integer :balance

      t.timestamps
    end
  end
end
