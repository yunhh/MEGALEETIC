class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :city
      t.string :name
      t.boolean :mobility_access
      t.integer :duration_in_minutes
      t.text :description

      t.timestamps
    end
  end
end
