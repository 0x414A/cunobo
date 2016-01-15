class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :student_question_id
      t.text :text

      t.timestamps null: false
    end
  end
end
