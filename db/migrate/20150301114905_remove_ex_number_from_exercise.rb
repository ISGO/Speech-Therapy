class RemoveExNumberFromExercise < ActiveRecord::Migration
  def up
    remove_column :exercises, :exNumber
  end

  def down
    add_column :exercises, :exNumber, :integer
  end
end
