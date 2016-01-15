class StudentQuestion < ActiveRecord::Base
  belongs_to :student
  belongs_to :question

  has_many :entries

  validates :student_id, uniqueness: { scope: :question_id }, presence: true

  def text
    question.text
  end
end
