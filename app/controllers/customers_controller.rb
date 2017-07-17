class CustomersController < ApplicationController
  before_action :find_customer, :only => [:edit, :update, :show]

  def update
    @customer.update(customer_params)
    if @customer.save
      redirect_to customer_path(@customer)
    else
      render :edit
    end
  end

  def show

  end

  private
  def customer_params
    params.require(:customer).permit(:fname, :lname, :username, :bio, :religion_id)
  end

  def find_customer
    @customer = Customer.find(params[:id])
  end

end