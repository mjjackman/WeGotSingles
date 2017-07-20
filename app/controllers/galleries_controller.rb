class GalleriesController < ApplicationController

  before_action :find_gallery, :only => [:edit, :update]

  def update
    @gallery.images.create(image_params)
    if @gallery.save
      redirect_to user_path(current_customer.username) 
    else
      render :edit
    end
  end

  private
  def find_gallery
    @gallery = current_customer.galleries.find(params[:id])
  end

  def image_params
    params.require(:gallery).permit(:image)
  end
end