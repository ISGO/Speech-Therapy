class CreateToDoBehaviors < ActiveRecord::Migration
  def change
    create_table :to_do_behaviors do |t|
      t.integer :id
      t.string :description
      t.string :time

      t.timestamps
    end
  end
end
