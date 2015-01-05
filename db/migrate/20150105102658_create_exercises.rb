class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.integer :id
      t.string :title
      t.integer :exNumber
      t.string :exType
      t.boolean :recVideo

      t.timestamps
    end
  end
end
