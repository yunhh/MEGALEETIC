class Course < ApplicationRecord
  has_many :steps
  has_many :user_courses

  has_one_attached :photo
end
