class AddStarSignToCustomer < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :star_sign, :integer
  end
end
