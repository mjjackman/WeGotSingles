class CustomersController < ApplicationController

  before_action :find_customer, :only => [:edit, :update, :show], :except => [:search]

  def update
    @customer.update(customer_params)
    if @customer.save
      redirect_to customer_path(@customer)
    else
      render :edit
    end
  end

  def index
    @matches = Customer.search(params)
  end

  private
  def customer_params
    params.require(:customer).permit(:fname, :lname, :username, :bio, :religion_id, :smoker, :drinker, :education_level, :industry_id)
  end

  def find_customer
    @customer = Customer.find(params[:id])
  end

end