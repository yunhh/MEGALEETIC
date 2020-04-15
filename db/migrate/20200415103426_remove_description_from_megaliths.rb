class RemoveDescriptionFromMegaliths < ActiveRecord::Migration[6.0]
  def change
    remove_column :megaliths, :description, :text
  end
end
