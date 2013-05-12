class CommentsController < ApplicationController
  respond_to :json
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @comment = Comment.new params[:comment]
    raise params.inspect
    if verify_recaptcha(request.remote_ip, params)[:status] == 'false'

      respond_with @comment
    else
      respond_with @comment if @comment.save
    end
  end

  def update
  end

  def destroy
  end
end
