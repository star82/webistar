class HomepagesController < ApplicationController
  respond_to :json

  def index

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


  def contact
    Contact.contact_email(params).deliver
    render :json => true
  end
end
