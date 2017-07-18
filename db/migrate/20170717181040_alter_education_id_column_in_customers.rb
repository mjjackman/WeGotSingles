class AlterEducationIdColumnInCustomers < ActiveRecord::Migration[5.1]
  def change
    rename_column :customers, :education_id, :education_level
  end
end
