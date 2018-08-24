class ChangeRepsColumnsToStrings < ActiveRecord::Migration[5.1]
  def change
    change_column :public_routines, :reps1, :string
    change_column :public_routines, :reps2, :string
    change_column :public_routines, :reps3, :string
    change_column :public_routines, :reps4, :string
    change_column :public_routines, :reps5, :string
    change_column :public_routines, :reps6, :string
    change_column :public_routines, :reps7, :string
    change_column :public_routines, :reps8, :string
  end
end
