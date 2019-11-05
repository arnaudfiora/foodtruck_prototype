class Foodtruck < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :ftphotos
end
