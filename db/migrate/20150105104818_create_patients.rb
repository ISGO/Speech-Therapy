class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.integer :id
      t.string :firstName
      t.string :lastName
      t.string :mail
      t.integer :therapist_id
      t.string :address
      t.string :hmo
      t.string :phone
      t.string :password

      t.timestamps
    end
  end
end
