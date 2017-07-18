class AddOccupationIdToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :occupation_id, :integer
  end
end
