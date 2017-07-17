class Customer < ApplicationRecord
  belongs_to :education, optional: true
end