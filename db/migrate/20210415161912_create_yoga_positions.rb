class CreateYogaPositions < ActiveRecord::Migration[6.1]
  def change
    create_table :yoga_positions do |t|
      t.string :name
      t.integer :duration
      t.text :description
      t.text :good_for
      t.references :lesson_plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
