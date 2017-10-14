class AddColumnPhotoToDonation < ActiveRecord::Migration[5.1]
  def change
    add_column :donations, :photo, :string
  end
end
