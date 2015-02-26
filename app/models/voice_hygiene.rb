class VoiceHygiene < ActiveRecord::Base
  attr_accessible :id, :path_pdf, :title

  validates :title, presence: true
  validates :path_pdf, format: {with: /.*pdf$/, message: "only pdf is allowed"}
end
