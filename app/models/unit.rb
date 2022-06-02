class Unit < ApplicationRecord
  has_many :unit_courses, dependent: :destroy
  has_many :courses, through: :unit_courses
  accepts_nested_attributes_for :unit_courses, :courses

  # scope :with_courses, -> { where_exists(:unit_course) }

  validates :name, presence: true
  validates :position, presence: true
  validates :body, presence: true
end
