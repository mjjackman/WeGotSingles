class Customer < ApplicationRecord
  belongs_to :religion, :optional => true
  accepts_nested_attributes_for :religion

  has_many :galleries
  has_many :images, through: :galleries
end