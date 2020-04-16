class AddLatitudeToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :latitude, :float
  end
end
