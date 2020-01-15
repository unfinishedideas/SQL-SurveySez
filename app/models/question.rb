class Question < ApplicationRecord
  belongs_to :survey
    validates :question_title, presence: true
    validates :answer1, presence: true
    validates :answer2, presence: true
    validates :answer3, presence: true
    validates :answer4, presence: true
end

# t.column(:question_text, :text)
# t.column(:user_response, :text)
# t.column(:question_title, :varchar)
# t.column(:survey_id, :integer)
