class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_customer
    Customer.find(session["warden.user.customer.key"][0][0])
  end

  def profile_gallery
    current_customer.galleries.find_by(:name => "profile")
  end

  def set_profile_image
    # binding.pry
    @profile = profile_gallery.images.find_by(:set_profile => true)
    unless @profile.nil?
      @profile.update(:set_profile => false)
    end
  end 
end
