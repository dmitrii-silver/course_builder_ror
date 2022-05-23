class Unit < ApplicationRecord
  has_many :unit_courses
  has_many :courses, through: :unit_courses

  validates :name, presence: true
  validates :position, presence: true
  validates :body, presence: true
end
