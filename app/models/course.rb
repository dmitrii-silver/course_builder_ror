class Course < ApplicationRecord
  has_many :unit_courses
  has_many :units, through: :unit_courses
  
  validates :name, presence: true
  validates :volume, presence: true
  validates :annotation, presence: true
  validates :description_text, presence: true
end
