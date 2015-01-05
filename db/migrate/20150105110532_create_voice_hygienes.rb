class CreateVoiceHygienes < ActiveRecord::Migration
  def change
    create_table :voice_hygienes do |t|
      t.integer :id
      t.string :title
      t.string :path_pdf

      t.timestamps
    end
  end
end
