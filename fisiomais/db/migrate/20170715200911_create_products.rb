class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price_cost
      t.decimal :price_sale
      t.boolean :status

      t.timestamps
    end
  end
end
