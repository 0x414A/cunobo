class LatestStudentQuestionFinder
  def initialize(student)
    @student = student
  end

  def latest_student_question
    @student.student_questions.last
  end
end
