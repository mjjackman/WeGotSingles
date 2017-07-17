class Customer < ApplicationRecord
  belongs_to :education, optional: true
  belongs_to :religion, :optional => true
  accepts_nested_attributes_for :religion
end