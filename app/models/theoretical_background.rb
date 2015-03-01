class TheoreticalBackground < ActiveRecord::Base
  attr_accessible :id, :link, :pdf, :title

  validates :link, :title, presence: true
  validates :pdf, format: {with: /.*pdf$/, message: "only pdf is allowed"}
end
