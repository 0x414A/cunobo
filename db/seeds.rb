# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create fake questions for testing
fake_questions = 10.times.map { { text: Faker::Lorem.sentence } }
Question.create(fake_questions)

# Create fake users
generated_password = "n0ts3cur3"
fake_users = 35.times.map do
  {
    email: Faker::Internet.email,
    password: generated_password,
    password_confirmation: generated_password
  }
end
User.create!(fake_users)

# Create fake teachers 
fake_teachers = User.ids.first(5).map{|user_id| { user_id: user_id } }
Teacher.create!(fake_teachers)

# Create fake students
fake_students = User.ids.last(30).map{|user_id| { user_id: user_id } }
Student.create!(fake_students)

# Assign random students
random_students = (1 + rand(Student.count)).times.map{ Student.all.sample }.uniq
random_questions = (1 + rand(Question.count)).times.map{ Question.all.sample }.uniq
random_questions.each{|question| question.assign!(random_students)}
