class DropTableEducations < ActiveRecord::Migration[5.1]
  def change
    drop_table :educations
  end
end
