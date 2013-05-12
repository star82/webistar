class Slider < ActiveRecord::Base
  attr_accessible :activity, :description, :priority, :image
  has_attached_file :image
end
