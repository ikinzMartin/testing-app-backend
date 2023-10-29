class CreateExerciceTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :exercice_types do |t|
      t.string :name
      t.string :instruction

      t.timestamps
    end
  end
end
