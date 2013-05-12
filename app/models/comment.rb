class Comment < ActiveRecord::Base
  attr_accessible :title, :email, :body
end
