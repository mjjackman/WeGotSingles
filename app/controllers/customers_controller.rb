class CustomersController < ApplicationController

  before_action :find_customer, :only => [:edit, :update, :show]

  def update
    # binding.pry
    unless @customer.galleries.empty?
      @image = @customer.galleries.first.images.create(image_params)
      @image.update(:set_profile => true)
    end
    @customer.update(customer_params)
    if @customer.save
      redirect_to customer_path(@customer)
    else
      render :edit
    end
  end

  private
  def customer_params
    params.require(:customer).permit(:fname, :lname, :username, :bio, :religion_id, :smoker, :drinker, :education_level, :industry_id)
  end

  def image_params
    params.require(:customer).permit(:image)
  end

  def find_customer
    @customer = Customer.find(params[:id])
  end

end