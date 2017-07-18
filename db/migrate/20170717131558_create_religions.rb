class CreateReligions < ActiveRecord::Migration[5.1]
  def change
    create_table :religions do |t|
      t.string :name
    end
  end
end
