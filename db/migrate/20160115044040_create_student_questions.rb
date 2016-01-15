class CreateStudentQuestions < ActiveRecord::Migration
  def change
    create_table :student_questions do |t|
      t.integer :student_id
      t.integer :question_id

      t.timestamps null: false
    end
  end
end
