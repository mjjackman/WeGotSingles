class AlterCustomerTable < ActiveRecord::Migration[5.1]
  def change
    rename_column :customers, :education, :education_id
  end
end
