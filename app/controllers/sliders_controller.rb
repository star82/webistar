class SlidersController < ApplicationController
  def index
    @sliders  = Slider.all
  end

  def show
    @slider  = Slider.find(params[:id])
  end

  def new
    @slider = Slider.new
  end

  def edit
    @slider = Slider.find( params[:id] )
  end

  def create
    @slider = Slider.new(params[:slider])
    @slider.save
    redirect_to @slider
  end

  def update
    @slider = Slider.update(params[:id],params[:slider])
    redirect_to @slider
  end

  def destroy
    @slider = Slider.find(params[:id])
    @slider.destroy
    redirect_to sliders_path
  end
end
