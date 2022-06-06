class Unit < ApplicationRecord
  has_many :unit_courses, dependent: :destroy
  has_many :courses, through: :unit_courses
  accepts_nested_attributes_for :courses

  validates :name, presence: true
  validates :position, presence: true
  validates :body, presence: true
end
