class AddUserToWorkouts < ActiveRecord::Migration[5.1]
  def change
    add_reference :workouts, :user, index: true
  end
end
