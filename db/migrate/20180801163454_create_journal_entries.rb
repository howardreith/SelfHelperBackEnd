class CreateJournalEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :journal_entries do |t|
      t.string :title
      t.string :content
      t.boolean :starred
      t.date :dateCreated

      t.timestamps
    end
  end
end
