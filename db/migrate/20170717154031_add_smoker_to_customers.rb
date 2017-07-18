class AddSmokerToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :smoker, :boolean
  end
end
