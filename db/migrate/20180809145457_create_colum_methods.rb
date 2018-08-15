class CreateColumMethods < ActiveRecord::Migration[5.1]
  def change
    create_table :colum_methods do |t|
      t.string :event
      t.string :emotion
      t.string :autothought
      t.string :distortion
      t.string :response
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
