class Course < ApplicationRecord
  has_many :unit_courses, dependent: :destroy
  has_many :units, through: :unit_courses
  accepts_nested_attributes_for :units
  
  validates :name, presence: true
  validates :volume, presence: true
  validates :annotation, presence: true
  validates :description_text, presence: true
end
