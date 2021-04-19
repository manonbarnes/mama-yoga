class CreateLessonPlans < ActiveRecord::Migration[6.1]
  def change
    create_table :lesson_plans do |t|
      t.integer :duration
      t.text :description
      t.string :title

      t.timestamps
    end
  end
end
