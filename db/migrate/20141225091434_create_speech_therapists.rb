class CreateSpeechTherapists < ActiveRecord::Migration
  def change
    create_table :speech_therapists do |t|
      t.integer :id
      t.string :firstName
      t.string :lastName
      t.string :password
      t.string :mail

      t.timestamps
    end
  end
end
