class TheoreticalBackground < ActiveRecord::Base
  attr_accessible :id, :link, :pdf, :title, :description

  validates :link, :title, :description, presence: true
  validates :pdf, format: {with: /.*\.pdf$/, message: "only pdf is allowed"}
end
