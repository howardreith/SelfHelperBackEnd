class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :exercise1
      t.integer :exercise1reps1
      t.integer :exercise1reps2
      t.integer :exercise1reps3
      t.integer :exercise1reps4
      t.integer :exercise1reps5
      t.integer :exercise1reps6
      t.integer :exercise1reps7
      t.integer :exercise1reps8
      t.string :exercise2
      t.integer :exercise2reps1
      t.integer :exercise2reps2
      t.integer :exercise2reps3
      t.integer :exercise2reps4
      t.integer :exercise2reps5
      t.integer :exercise2reps6
      t.integer :exercise2reps7
      t.integer :exercise2reps8
      t.string :exercise3
      t.integer :exercise3reps1
      t.integer :exercise3reps2
      t.integer :exercise3reps3
      t.integer :exercise3reps4
      t.integer :exercise3reps5
      t.integer :exercise3reps6
      t.integer :exercise3reps7
      t.integer :exercise3reps8
      t.string :exercise4
      t.integer :exercise4reps1
      t.integer :exercise4reps2
      t.integer :exercise4reps3
      t.integer :exercise4reps4
      t.integer :exercise4reps5
      t.integer :exercise4reps6
      t.integer :exercise4reps7
      t.integer :exercise4reps8
      t.string :exercise5
      t.integer :exercise5reps1
      t.integer :exercise5reps2
      t.integer :exercise5reps3
      t.integer :exercise5reps4
      t.integer :exercise5reps5
      t.integer :exercise5reps6
      t.integer :exercise5reps7
      t.integer :exercise5reps8
      t.string :exercise6
      t.integer :exercise6reps1
      t.integer :exercise6reps2
      t.integer :exercise6reps3
      t.integer :exercise6reps4
      t.integer :exercise6reps5
      t.integer :exercise6reps6
      t.integer :exercise6reps7
      t.integer :exercise6reps8
      t.string :exercise7
      t.integer :exercise7reps1
      t.integer :exercise7reps2
      t.integer :exercise7reps3
      t.integer :exercise7reps4
      t.integer :exercise7reps5
      t.integer :exercise7reps6
      t.integer :exercise7reps7
      t.integer :exercise7reps8
      t.string :exercise8
      t.integer :exercise8reps1
      t.integer :exercise8reps2
      t.integer :exercise8reps3
      t.integer :exercise8reps4
      t.integer :exercise8reps5
      t.integer :exercise8reps6
      t.integer :exercise8reps7
      t.integer :exercise8reps8
      t.string :exercise9
      t.integer :exercise9reps1
      t.integer :exercise8reps2
      t.integer :exercise8reps3
      t.integer :exercise8reps4
      t.integer :exercise8reps5
      t.integer :exercise8reps6
      t.integer :exercise8reps7
      t.integer :exercise8reps8
      t.string :exercise10
      t.integer :exercise10reps1
      t.integer :exercise10reps2
      t.integer :exercise10reps3
      t.integer :exercise10reps4
      t.integer :exercise10reps5
      t.integer :exercise10reps6
      t.integer :exercise10reps7
      t.integer :exercise10reps8
      t.timestamps
    end
  end
end
