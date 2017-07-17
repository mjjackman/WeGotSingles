class Customer < ApplicationRecord
  belongs_to :religion, :optional => true
  accepts_nested_attributes_for :religion

  mount_uploader :profile_image, ProfileImageUploader
end