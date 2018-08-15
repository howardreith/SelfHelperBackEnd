class RemoveColumnsFromDownwardArrows < ActiveRecord::Migration[5.1]
  def change
    remove_column :downward_arrows, :autothought, :string
    remove_column :downward_arrows, :distortion, :string
    remove_column :downward_arrows, :response, :string
  end
end
