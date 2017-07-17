class Customer < ApplicationRecord
  belongs_to :religion, :optional => true
  accepts_nested_attributes_for :religion

  enum education_level: [:GCSE, :ALevel, :Bachelors, :Masters, :PhD]
end