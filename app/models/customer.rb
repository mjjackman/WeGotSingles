class Customer < ApplicationRecord
  belongs_to :religion, :optional => true
  accepts_nested_attributes_for :religion

  belongs_to :industry, :optional => true
  belongs_to :occupation, :optional => true

  enum education_level: [:GCSE, :ALevel, :Bachelors, :Masters, :PhD]
  enum star_sign: [:Aries, :Taurus, :Gemini, :Cancer, :Leo, :Virgo, :Libra, :Scorpio, :Sagittarius, :Capricorn, :Aquarius, :Pisces]
end