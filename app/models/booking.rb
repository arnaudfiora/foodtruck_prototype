class Booking < ApplicationRecord
  belongs_to :foodtruck
  belongs_to :user

  STATUS =  %w[Pending Confirmed Declined]
  validates :booking_status, inclusion: { in: STATUS }
end
