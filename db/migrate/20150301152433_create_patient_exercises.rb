class CreatePatientExercises < ActiveRecord::Migration
  def change
    create_table :patient_exercises do |t|
      t.integer :patient_id
      t.string :exercise_type
      t.integer :exercise_id
      t.boolean :is_submitted
      t.boolean :is_checked

      t.timestamps
    end
  end
end
