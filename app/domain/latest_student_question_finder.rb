class LatestStudentQuestionFinder
  def initialize(student)
    @student = student
  end

  def find_or_create_latest_student_question
    @student.student_questions.last ||
      StudentQuestion.create(student_id: @student.id, question_id: Question.first.id)
  end
end
