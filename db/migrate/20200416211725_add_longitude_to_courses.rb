class AddLongitudeToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :longitude, :float
  end
end
