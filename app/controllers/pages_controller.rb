class PagesController < ApplicationController
  def home
  end

  def dashboard
    @foodtrucks = Foodtruck.where(user_id: current_user)
    @bookings = Booking.where(user_id: current_user)
  end
      
end
