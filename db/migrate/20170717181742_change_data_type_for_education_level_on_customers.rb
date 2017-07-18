class ChangeDataTypeForEducationLevelOnCustomers < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :education_level, 'integer USING CAST(education_level AS integer)'
  end
end
