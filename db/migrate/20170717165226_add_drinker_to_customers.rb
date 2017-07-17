class AddDrinkerToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :drinker, :boolean
  end
end
