class AddHeightToCustomer < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :height, :float
  end
end
