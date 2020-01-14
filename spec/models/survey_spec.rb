require 'rails_helper'

  describe Survey do
  it("has many questions") do
    survey = Survey.create(name: "Beef")
    question1 = Question.create({:question_title => "song1", :survey_id => survey.id, :question_text => 'Howdy doody', :user_response=> ""})
    question2 = Question.create({:question_title => "song1", :survey_id => survey.id, :question_text => 'Howdy doody', :user_response=> ""})
    expect(survey.questions()).to(eq([question1, question2]))
  end
end

describe Survey do
  it { should have_many(:questions) }                       
end
