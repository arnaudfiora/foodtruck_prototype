class PagesController < ApplicationController
  def home
  end
  def dashboard
    @foodtrucks = Foodtruck.where(user_id: current_user)
    @bookings_user = []
    @foodtrucks.each do |foodtruck|
      @bookings_user << Booking.where(foodtruck_id: foodtruck.id)
    end
    @bookings = Booking.all.where(user_id: current_user)
  end
end
