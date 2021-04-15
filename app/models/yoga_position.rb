class YogaPosition < ApplicationRecord
  has_many :lesson_positions
  has_one_attached :photo
end
