class CreateExercices < ActiveRecord::Migration[7.1]
  def change
    create_table :exercices do |t|
      t.belongs_to :exercice_type, null: false, foreign_key: true
      t.string :name
      t.string :prompt
      t.string :distractor_1
      t.string :distractor_2
      t.string :distractor_3
      t.string :answer

      t.timestamps
    end
  end
end
