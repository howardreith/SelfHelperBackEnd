class CreatePublicRoutines < ActiveRecord::Migration[5.1]
  def change
    create_table :public_routines do |t|
      t.string :name
      t.boolean :include
      t.string :exercise1
      t.integer :reps1
      t.string :exercise2
      t.integer :reps2
      t.string :exercise3
      t.integer :reps3
      t.string :exercise4
      t.integer :reps4
      t.string :exercise5
      t.integer :reps5
      t.string :exercise6
      t.integer :reps6
      t.string :exercise7
      t.integer :reps7
      t.string :exercise8
      t.integer :reps8

      t.timestamps
    end
  end
end
