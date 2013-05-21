class RaterController < ApplicationController 
  
  def create
    rate = Rate.create(gallery_id: params[:id], stars: params[:score])
    average = Rate.average(:stars,:conditions => ["gallery_id=?", params[:id]]).to_f.round(1)


    render :json => average
  end
end