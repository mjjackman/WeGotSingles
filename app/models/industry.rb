class Industry < ApplicationRecord

  belongs_to :customer
  has_one :occupation, :through => :industry_occupations

end