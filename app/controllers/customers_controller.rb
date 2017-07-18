class CustomersController < ApplicationController
  before_action :find_customer, :only => [:edit, :update]

  def show
    # binding.pry
    @customer = Customer.find_by username: params[:username]
  end

  def update
    @customer.update(customer_params)
    if @customer.save
      redirect_to customer_path(@customer)
    else
      render :edit
    end
  end

  private
  def customer_params
    params.require(:customer).permit(:fname, :lname, :username, :bio, :education_id)
    params.require(:customer).permit(:fname, :lname, :username, :bio, :religion_id)
  end

  def find_customer
    @customer = Customer.find(params[:id])
  end

end