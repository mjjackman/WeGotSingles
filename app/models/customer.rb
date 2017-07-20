class Customer < ApplicationRecord
  validates :username, uniqueness: true

  before_save :downcase_fields
  belongs_to :education, optional: true
  belongs_to :religion, :optional => true
  has_many :galleries
  has_many :images, through: :galleries
  belongs_to :industry, :optional => true
  belongs_to :occupation, :optional => true

  accepts_nested_attributes_for :religion

  enum education_level: [:GCSE, :ALevel, :Bachelors, :Masters, :PhD]
  enum star_sign: [:Aries, :Taurus, :Gemini, :Cancer, :Leo, :Virgo, :Libra, :Scorpio, :Sagittarius, :Capricorn, :Aquarius, :Pisces]
  enum gender: [:male, :female]

  def self.search(params)
    customers = all

    if params[:gender_ids].present?
      customers = customers.where(gender: params[:gender_ids])
    end
    customers
  end

  def downcase_fields
    self.username.downcase!
  end

  def percentage_complete
    attr_whitelist = [:fname, :lname, :username, :bio, :industry_id, :occupation_id, :religion_id, :education_level, :smoker, :drinker]
    complete = 0
    weight = 1 / (attr_whitelist.count.to_f)
    attr_loop = self.attributes.select { |k, v| attr_whitelist.include?(k.to_sym) }
    attr_loop.each do |attribute, val| 
      complete += weight if val.present?
    end
    return ((complete) * 100).round(1)
  end
  
  def profile_gallery
    galleries.find_by(:name => "profile")
  end
end