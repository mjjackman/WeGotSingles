class CustomersController < ApplicationController
  before_action :find_customer_id, :only => [:edit, :update]

  def update
    @customer.update(customer_params)
  end

  private
  def customer_params
    params.require(:customer).permit(:fname, :lname, :username, :bio)
  end

  def find_customer
    @customer = Customer.find(params[:id])
  end

end