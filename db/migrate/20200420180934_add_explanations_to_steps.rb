class AddExplanationsToSteps < ActiveRecord::Migration[6.0]
  def change
    add_column :steps, :explanations, :string
  end
end
