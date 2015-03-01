class Exercise < ActiveRecord::Base
  attr_accessible :exNumber, :exType, :id, :recVideo, :title

  validates :exType, :title, presence:true
end
