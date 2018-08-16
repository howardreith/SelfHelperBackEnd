class CreateExposures < ActiveRecord::Migration[5.1]
  def change
    create_table :exposures do |t|
      t.string :action
      t.float :prediction
      t.float :actual
      t.float :satisfaction
      t.references :user, index: true, foreign_key: true, null: false
      t.timestamps
    end
  end
end
