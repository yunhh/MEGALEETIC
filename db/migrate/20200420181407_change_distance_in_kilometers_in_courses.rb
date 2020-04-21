class ChangeDistanceInKilometersInCourses < ActiveRecord::Migration[6.0]
  def change
    change_column :courses, :distance_in_kilometers, :float
  end
end
