class UserCourse < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :user_steps
end
