class AddExercisesCustomAndExerciseCustomreToCustoms < ActiveRecord::Migration
  def change
    add_column :customs, :exercise_custom, :string
    add_column :customs, :exercise_customre, :string
  end
end
