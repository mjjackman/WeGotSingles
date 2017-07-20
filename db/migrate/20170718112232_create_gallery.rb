class CreateGallery < ActiveRecord::Migration[5.1]
  def change
    create_table :galleries do |t|
      t.string :name
      t.integer :customer_id
    end
  end
end
