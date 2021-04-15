class CreateLessonPositions < ActiveRecord::Migration[6.1]
  def change
    create_table :lesson_positions do |t|
      t.references :yoga_position, null: false, foreign_key: true
      t.references :lesson_plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
