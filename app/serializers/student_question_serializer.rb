class StudentQuestionSerializer < ActiveModel::Serializer
  attributes :question, :question_text

  def question_text
    question.text
  end

  def entries_data
    EntrySerializer.new(entries).attributes
  end
end
