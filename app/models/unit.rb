class Unit < ApplicationRecord
  has_many :unit_courses
  has_many :courses, through: :unit_courses
end
