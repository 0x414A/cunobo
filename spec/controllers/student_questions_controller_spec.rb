require 'rails_helper'

RSpec.describe StudentQuestionsController, type: :controller do
  let(:student_question){FactoryGirl.create(:student_question)}

  describe '#show' do
    it "responds with status code 200" do
      get :show, id: student_question.id
      raise response.status.inspect
    end
  end

end
