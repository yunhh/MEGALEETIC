class ChangeQuizzAnswerInUserStep < ActiveRecord::Migration[6.0]
  def change
    change_column :user_steps, :quiz_answer, :string
  end
end
