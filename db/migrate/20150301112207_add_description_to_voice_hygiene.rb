class AddDescriptionToVoiceHygiene < ActiveRecord::Migration
  def change
    add_column :voice_hygienes, :description, :string
  end
end
