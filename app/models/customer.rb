class Customer < ApplicationRecord
  belongs_to :religion, :optional => true
  accepts_nested_attributes_for :religion

  belongs_to :industry, :optional => true
  belongs_to :occupation, :optional => true

  enum education_level: [:GCSE, :ALevel, :Bachelors, :Masters, :PhD]
  enum gender: [:male, :female]

  def self.search(params)
    customers = all

    if params[:gender_ids].present?
      customers = customers.where(gender: params[:gender_ids])
    end
    customers
  end
end