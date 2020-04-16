class AddDistanceToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :distance_in_kilometers, :integer
  end
end
