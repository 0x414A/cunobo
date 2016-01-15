class CreateJournalEntries < ActiveRecord::Migration
  def change
    create_table :journal_entries do |t|
      t.integer :journal_id
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
