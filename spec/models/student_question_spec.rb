require 'rails_helper'

RSpec.describe StudentQuestion, type: :model do
  let(:question_text){Faker::Lorem.sentence}
  let(:question){FactoryGirl.create(:question, text: question_text)}
  let(:student){FactoryGirl.create(:student)}
  let(:student_question){
    FactoryGirl.create(:student_question, 
                       question: question, 
                       student: student)
  }
  
  it "belongs to a question" do
    expect(student_question.question).to eq(question)
  end

  context 'text' do
    it "returns the parent question text" do
      expect(student_question.text).to eq(question_text)
    end
  end
end

