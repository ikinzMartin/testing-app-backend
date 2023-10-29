class CreateExerciceAttributes < ActiveRecord::Migration[7.1]
  def change
    create_table :exercice_attributes do |t|
      t.string :description
      t.boolean :visible

      t.timestamps
    end
  end
end
