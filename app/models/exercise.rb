class Exercise < ActiveRecord::Base
  attr_accessible :exType, :id, :recVideo, :title, :description, :image

  validates :exType, :title, :description, presence:true
  validates :image, format: {with: /.*\.(jpg|jpeg|bmp|png)$/, message: "only image files are allowed"}
end
