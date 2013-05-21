class Rate < ActiveRecord::Base
  belongs_to :gallery

  attr_accessible :gallery_id, :stars
end