class Review < ApplicationRecord
  belongs_to :foodtruck
  belongs_to :user

  RATING = [0, 1, 2, 3, 4, 5]
  validates :rating, presence: true, inclusion: { in: RATING }
  validates :content, presence: true
end
