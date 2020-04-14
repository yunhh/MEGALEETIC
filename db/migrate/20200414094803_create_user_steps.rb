class CreateUserSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :user_steps do |t|
      t.boolean :done
      t.integer :quiz_answer
      t.references :user_course, null: false, foreign_key: true
      t.references :step, null: false, foreign_key: true

      t.timestamps
    end
  end
end
