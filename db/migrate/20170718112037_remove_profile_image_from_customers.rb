class RemoveProfileImageFromCustomers < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :profile_image
  end
end
