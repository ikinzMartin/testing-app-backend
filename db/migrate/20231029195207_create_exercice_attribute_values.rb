class CreateExerciceAttributeValues < ActiveRecord::Migration[7.1]
  def change
    create_table :exercice_attribute_values do |t|
      t.belongs_to :exercice_attribute, null: false, foreign_key: true
      t.string :value

      t.timestamps
    end
  end
end
