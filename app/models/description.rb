class Description < ApplicationRecord
  belongs_to :megalith
  has_one_attached :photo
end
