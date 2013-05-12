class HomepagesController < ApplicationController
  respond_to :json

  def index
    @gallery = Gallery.first
  end

  def show
  end

  def edit
  end

  def new
    @comment  = Comment.new
  end

  def create
  end

  def update
  end

  def destroy
  end
end
