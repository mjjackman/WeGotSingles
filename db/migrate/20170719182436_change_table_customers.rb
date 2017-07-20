class ChangeTableCustomers < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :gender, 'integer USING CAST(gender AS integer)'
  end
end
