class Gallery < ApplicationRecord
  has_many :images
  belongs_to :customer
end