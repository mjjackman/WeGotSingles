class Customer < ApplicationRecord
  belongs_to :religion, :optional => true
  accepts_nested_attributes_for :religion

  belongs_to :industry, :optional => true
  belongs_to :occupation, :optional => true

  enum education_level: [:GCSE, :ALevel, :Bachelors, :Masters, :PhD]
end