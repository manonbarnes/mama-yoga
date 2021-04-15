class RemoveLessonPlanFromYogaPositions < ActiveRecord::Migration[6.1]
  def change
    remove_reference :yoga_positions, :lesson_plan, index: true, foreign_key: true
  end
end
