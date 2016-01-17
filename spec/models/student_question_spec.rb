require 'rails_helper'

RSpec.describe StudentQuestion, type: :model do
  let(:question){FactoryGirl.create(:question)}
  let(:student){FactoryGirl.create(:student)}
  let(:student_question){
    FactoryGirl.create(:student_question, 
                       question: question, 
                       student: student)
  }
  
  it "belongs to a question" do
    expect(student_question.question).to eq(question)
  end
end
