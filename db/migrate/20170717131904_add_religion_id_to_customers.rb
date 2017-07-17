class AddReligionIdToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :religion_id, :integer
  end
end
