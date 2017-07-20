class Customer < ApplicationRecord
  before_save :downcase_fields
  belongs_to :education, optional: true
  belongs_to :religion, :optional => true
  accepts_nested_attributes_for :religion
  validates :username, uniqueness: true

  def downcase_fields
    self.username.downcase!
  end
  belongs_to :religion, :optional => true
  accepts_nested_attributes_for :religion
  has_many :galleries
  has_many :images, through: :galleries
  belongs_to :industry, :optional => true
  belongs_to :occupation, :optional => true

  enum education_level: [:GCSE, :ALevel, :Bachelors, :Masters, :PhD]

  def profile_gallery
    galleries.find_by(:name => "profile")
  end
end