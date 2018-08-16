class CreateGenerics < ActiveRecord::Migration[5.1]
  def change
    create_table :generics do |t|
      t.string :activity
      t.float :fear_level
      t.references :user, index: true, foreign_key: true, null: false
      t.timestamps
    end
  end
end
