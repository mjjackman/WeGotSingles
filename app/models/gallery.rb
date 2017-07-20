class Gallery < ApplicationRecord
  has_many :images
  belongs_to :customer

  def set_profile_image
    @profile = images.find_by(:set_profile => true)
    unless @profile.nil?
      @profile.update(:set_profile => false)
    end
  end  
end