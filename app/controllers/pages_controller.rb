class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @foodtrucks = Foodtruck.all
  end

  def dashboard
    @foodtrucks = Foodtruck.where(user_id: current_user)
    @bookings = Booking.all
    @bookings_received = []

    @bookings.each do |booking|
      @bookings_received << booking if booking.foodtruck.user == current_user
    end

    @bookings_made = Booking.where(user: current_user)
  end
end
