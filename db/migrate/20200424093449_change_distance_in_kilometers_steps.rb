class ChangeDistanceInKilometersSteps < ActiveRecord::Migration[6.0]
  def change
    change_column :steps, :distance_in_kilometers, :float
  end
end
