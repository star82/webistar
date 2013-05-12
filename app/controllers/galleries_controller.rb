class GalleriesController < ApplicationController
  respond_to :json
  def index
    @gallery = Gallery.all
    gallery  = @gallery.map{|img| img[:path] = img.image.url(:thumb) }
    respond_with @gallery
  end

  def show
    respond_with  Gallery.find(params[:id])
  end

  def create
    @gallery = Gallery.create!(params[:galleries])
    redirect_to "/#gallery"
  end
end
