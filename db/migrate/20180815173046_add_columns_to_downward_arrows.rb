class AddColumnsToDownwardArrows < ActiveRecord::Migration[5.1]
  def change
    add_column :downward_arrows, :autothought1, :string
    add_column :downward_arrows, :distortion1, :string
    add_column :downward_arrows, :response1, :string
  end
end
