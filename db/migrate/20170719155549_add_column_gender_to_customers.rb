class AddColumnGenderToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :gender, :string
  end
end
