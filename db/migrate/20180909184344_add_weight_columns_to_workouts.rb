class AddWeightColumnsToWorkouts < ActiveRecord::Migration[5.1]
  def change
    add_column :workouts, :exercise1weight, :float
    add_column :workouts, :exercise2weight, :float
    add_column :workouts, :exercise3weight, :float
    add_column :workouts, :exercise4weight, :float
    add_column :workouts, :exercise5weight, :float
    add_column :workouts, :exercise6weight, :float
    add_column :workouts, :exercise7weight, :float
    add_column :workouts, :exercise8weight, :float
    add_column :workouts, :exercise9weight, :float
    add_column :workouts, :exercise10weight, :float
  end
end
