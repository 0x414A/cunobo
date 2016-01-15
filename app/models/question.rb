class Question < ActiveRecord::Base
  has_many :student_questions

  def assign!(students)
    students.map(&:id).each do |student_id|
      StudentQuestion.create(student_id: student_id, question_id: self.id)
    end
  end
end
