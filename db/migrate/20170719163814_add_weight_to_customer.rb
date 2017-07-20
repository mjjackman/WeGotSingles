class AddWeightToCustomer < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :weight, :float
  end
end
