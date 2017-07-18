class AddIndustryIdToOccupations < ActiveRecord::Migration[5.1]
  def change
    add_column :occupations, :industry_id, :integer
  end
end
