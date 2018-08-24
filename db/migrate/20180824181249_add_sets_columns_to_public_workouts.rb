class AddSetsColumnsToPublicWorkouts < ActiveRecord::Migration[5.1]
  def change
    add_column :public_routines, :sets1, :integer
    add_column :public_routines, :sets2, :integer
    add_column :public_routines, :sets3, :integer
    add_column :public_routines, :sets4, :integer
    add_column :public_routines, :sets5, :integer
    add_column :public_routines, :sets6, :integer
    add_column :public_routines, :sets7, :integer
    add_column :public_routines, :sets8, :integer
  end
end
