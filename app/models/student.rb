class Student < ActiveRecord::Base
  belongs_to :user

  has_many :student_questions
  has_many :questions, through: :student_questions

  validates :user_id, presence: true
end
