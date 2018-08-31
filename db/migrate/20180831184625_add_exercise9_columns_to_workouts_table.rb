class AddExercise9ColumnsToWorkoutsTable < ActiveRecord::Migration[5.1]
  def change
    add_column :workouts, :exercise9reps2, :integer
    add_column :workouts, :exercise9reps3, :integer
    add_column :workouts, :exercise9reps4, :integer
    add_column :workouts, :exercise9reps5, :integer
    add_column :workouts, :exercise9reps6, :integer
    add_column :workouts, :exercise9reps7, :integer
    add_column :workouts, :exercise9reps8, :integer
  end
end
