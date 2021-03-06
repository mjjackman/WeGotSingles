class CustomersController < ApplicationController

  before_action :find_customer, :only => [:edit, :update, :show], :except => [:search]
  before_action :find_gallery, :only => [:show, :update]

  def show
    @customer = Customer.find_by username: params[:username]
    unless @customer.galleries.empty?
      @image = @profile_gallery.images.find_by(:set_profile => true)
    end
  end

  def update
    unless @customer.galleries.empty?
      @profile_gallery.set_profile_image
      @image = @profile_gallery.images.create(image_params)
      @image.update(:set_profile => true)
    end
    @customer.update(customer_params)
    if @customer.save
      redirect_to user_path(@customer.username)
    else
      render :edit
    end
  end

  def index
    @matches = Customer.search(params)
  end

  private
  def customer_params
    params.require(:customer).permit(:fname, :lname, :username, :bio, :religion_id, :smoker, :drinker, :education_level, :industry_id, :star_sign, :height, :weight)
  end

  def image_params
    params.require(:customer).permit(:image)
  end

  def find_customer
    @customer = Customer.find_by username: params[:username]
  end

  def find_gallery
    @profile_gallery = current_customer.profile_gallery
  end
end