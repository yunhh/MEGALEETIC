class UserStep < ApplicationRecord
  belongs_to :user_course
  belongs_to :step

  has_one_attached :photo
end
