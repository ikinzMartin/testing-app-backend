class CreateExerciceLinkAttributes < ActiveRecord::Migration[7.1]
  def change
    create_table :exercice_link_attributes do |t|
      t.belongs_to :exercice, null: false, foreign_key: true
      t.belongs_to :exercice_attribute, null: false, foreign_key: true
      t.belongs_to :exercice_attribute_value, null: false, foreign_key: true

      t.timestamps
    end
  end
end
