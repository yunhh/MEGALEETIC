class AddDistanceToSteps < ActiveRecord::Migration[6.0]
  def change
    add_column :steps, :distance_in_km, :integer
  end
end
