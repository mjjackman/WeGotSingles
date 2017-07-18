class AddIndustryIdToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :industry_id, :integer
  end
end
