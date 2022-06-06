class UnitCourse < ApplicationRecord
  belongs_to :course, inverse_of: :unit_courses
  belongs_to :unit, inverse_of: :unit_courses
end
