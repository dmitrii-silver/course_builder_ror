class Course < ApplicationRecord
  has_many :unit_courses, dependent: :destroy
  has_many :units, through: :unit_courses
  accepts_nested_attributes_for :units

  # scope :with_units, -> { where_exists(:unit_course) }
  
  validates :name, presence: true
  validates :volume, presence: true
  validates :annotation, presence: true
  validates :description_text, presence: true
end
