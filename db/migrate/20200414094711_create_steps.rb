class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.integer :position
      t.string :question
      t.string :answer_1
      t.string :answer_2
      t.string :answer_3
      t.string :answer_4
      t.string :correct_answer
      t.references :course, null: false, foreign_key: true
      t.references :megalith, null: false, foreign_key: true

      t.timestamps
    end
  end
end
