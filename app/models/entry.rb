class Entry < ActiveRecord::Base
  belongs_to :student_question
  
  validates :student_question_id, presence: true
end
