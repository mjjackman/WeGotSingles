class CreateEducation < ActiveRecord::Migration[5.1]
  def change
    create_table :educations do |t|
      t.string :level
    end
  end
end
