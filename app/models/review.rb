class Review < ApplicationRecord
  belongs_to :foodtruck
  belongs_to :user

end
