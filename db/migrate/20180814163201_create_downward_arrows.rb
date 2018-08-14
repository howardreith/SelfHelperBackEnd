class CreateDownwardArrows < ActiveRecord::Migration[5.1]
  def change
    create_table :downward_arrows do |t|
      t.string :autothought
      t.string :distortion
      t.string :response
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
