class AddUserIdToJournalEntries < ActiveRecord::Migration[5.1]
  def change
    add_column :journal_entries, :user_id, :integer
  end
end
