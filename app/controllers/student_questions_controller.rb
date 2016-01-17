class StudentQuestionsController < ApplicationController
  def show
    render json: StudentQuestion.find_by_id(params[:id])
  end

  def entries
    render json: student_question.entries.by_latest
  end

  def new_entry
    Entry.create(
      student_question_id: params[:student_question_id],
      text: params[:text],
      user_id: current_user.id,
      published: true
    )
    render json: 'Created'
  end

  private

  def student_question
    @student_question ||= StudentQuestion.find_by_id(params[:student_question_id])
  end
end
