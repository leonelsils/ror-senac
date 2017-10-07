class AddCategoryToDonations < ActiveRecord::Migration[5.1]
  def change
    add_reference :donations, :category, foreign_key: true
  end
end
