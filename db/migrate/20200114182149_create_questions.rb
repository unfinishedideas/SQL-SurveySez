class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.column(:question_text, :text)
      t.column(:user_response, :text)
      t.column(:question_title, :varchar)
      t.column(:survey_id, :integer)
    end
  end
end
