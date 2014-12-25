class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.integer :id
      t.string :firstName
      t.string :lastName
      t.string :password
      t.string :mail
      t.string :hmo
      t.integer :therapist_id

      t.timestamps
    end
  end
end
