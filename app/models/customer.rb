class Customer < ApplicationRecord
  before_save :downcase_fields
  belongs_to :education, optional: true
  belongs_to :religion, :optional => true
  accepts_nested_attributes_for :religion
  validates :username, uniqueness: true

  def downcase_fields
    self.username.downcase!
  end
end