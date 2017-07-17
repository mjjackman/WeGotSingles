class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :fname
      t.string :lname
      t.string :username
      t.text :bio
    end
  end
end
