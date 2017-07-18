class Industry < ApplicationRecord

  has_many :customers
  has_many :occupations

end

