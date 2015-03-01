class VoiceHygiene < ActiveRecord::Base
  attr_accessible :id, :path_pdf, :title, :description

  validates :title, :description, presence: true
  validates :path_pdf, format: {with: /.*pdf$/, message: "only pdf is allowed"}
end
