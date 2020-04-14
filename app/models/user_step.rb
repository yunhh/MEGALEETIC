class UserStep < ApplicationRecord
  belongs_to :user_course
  belongs_to :step
end
