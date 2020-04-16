class RenameDistanceInKmToDistanceInKilometers < ActiveRecord::Migration[6.0]
  def change
    rename_column :steps, :distance_in_km, :distance_in_kilometers
  end
end
