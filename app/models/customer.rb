class Customer < ApplicationRecord
  belongs_to :religion, :optional => true
  accepts_nested_attributes_for :religion

  belongs_to :industry, :optional => true
  belongs_to :occupation, :optional => true

  enum education_level: [:GCSE, :ALevel, :Bachelors, :Masters, :PhD]

  def perc_complete
    complete = 0
    weight = 1 / (self.attributes.count.to_f - 1)
    self.attributes.each_pair do |attribute, val| 
      complete += weight if val.present?
    end
    return ((complete - weight) * 100).round(1)
  end
end