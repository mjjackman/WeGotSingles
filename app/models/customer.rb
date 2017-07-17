class Customer < ApplicationRecord

  belongs_to :industry, :optional => true

end