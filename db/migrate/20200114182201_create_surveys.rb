class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.column(:name, :varchar)
      
    end
  end
end
