class Student < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true

  has_many :student_questions
end
