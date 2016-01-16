class StudentQuestionsController < ApplicationController
  def entries
    render json: student_question.entries.by_latest
  end

  def new_entry
    Entry.create(
      student_question_id: params[:student_question_id],
      text: params[:text],
      published: true
    )
    render json: 'Created'
  end

  private

  def student_question
    @student_question ||= StudentQuestion.find_by_id(params[:student_question_id])
  end
end
