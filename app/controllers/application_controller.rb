class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_customer
    Customer.find(session["warden.user.customer.key"][0][0])
  end
end
