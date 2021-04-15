class LessonPosition < ApplicationRecord
  belongs_to :yoga_position
  belongs_to :lesson_plan
end
