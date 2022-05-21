class Course < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :active, confirmation: true, if: :active?


  def active?
    if title.present? && body.present?
      return true
    end
  end
end
