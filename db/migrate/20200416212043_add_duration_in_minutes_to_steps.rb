class AddDurationInMinutesToSteps < ActiveRecord::Migration[6.0]
  def change
    add_column :steps, :duration_in_minutes, :integer
  end
end
