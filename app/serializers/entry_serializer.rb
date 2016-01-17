class EntrySerializer < ActiveModel::Serializer
  attributes :text, :created_at, :created_time, :published, :user, :author, :student_question_id

  def created_time
    created_at.strftime('%B %d, %Y %l:%M%p') # like January 16, 2016 2:53AM
  end

  def author
    user.email
  end

  private

  def student_question
    @student_question ||= StudentQuestion.find_by_id(student_question_id)
  end
end
