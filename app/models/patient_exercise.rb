class PatientExercise < ActiveRecord::Base
  attr_accessible :exercise_id, :exercise_type, :is_checked, :is_submitted, :patient_id
end
