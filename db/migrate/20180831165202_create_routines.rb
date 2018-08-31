class CreateRoutines < ActiveRecord::Migration[5.1]
  def change
    create_table :routines do |t|
      t.string :name
      t.boolean :include
      t.string :exercise1
      t.string :reps1
      t.integer :sets1
      t.string :exercise2
      t.string :reps2
      t.integer :sets2
      t.string :exercise3
      t.string :reps3
      t.integer :sets3
      t.string :exercise4
      t.string :reps4
      t.integer :sets4
      t.string :exercise5
      t.string :reps5
      t.integer :sets5
      t.string :exercise6
      t.string :reps6
      t.integer :sets6
      t.string :exercise7
      t.string :reps7
      t.integer :sets7
      t.string :exercise8
      t.string :reps8
      t.integer :sets8
      t.string :exercise9
      t.string :reps9
      t.integer :sets9
      t.string :exercise10
      t.string :reps10
      t.integer :sets10
      t.timestamps
    end
  end
end
