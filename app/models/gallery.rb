class Gallery < ActiveRecord::Base
  letsrate_rateable "name"
  attr_accessible :image, :name
  has_attached_file :image, :styles => { :thumb => "x150" }, :default_url => "/images/:style/missing.png"
end
