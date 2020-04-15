class CreateDescriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :descriptions do |t|
      t.references :megalith, null: false, foreign_key: true
      t.integer :position
      t.string :content

      t.timestamps
    end
  end
end
