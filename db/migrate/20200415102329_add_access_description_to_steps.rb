class AddAccessDescriptionToSteps < ActiveRecord::Migration[6.0]
  def change
    add_column :steps, :access_description, :string
  end
end
