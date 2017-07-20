class AddSetProfileToImage < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :set_profile, :boolean
  end
end
