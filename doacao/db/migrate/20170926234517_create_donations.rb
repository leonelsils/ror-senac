class CreateDonations < ActiveRecord::Migration[5.1]
  def change
    create_table :donations do |t|
      t.string :name
      t.integer :type
      t.integer :porte
      t.integer :sex
      t.integer :age

      t.timestamps
    end
  end
end
