class ChangeDurationInMinutesInCourses < ActiveRecord::Migration[6.0]
  def change
    change_column :courses, :duration_in_minutes, :float
  end
end
