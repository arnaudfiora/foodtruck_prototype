class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if params[:query].nil? || params[:query] == ''
      @foodtrucks = Foodtruck.all
    else
      @foodtrucks = Foodtruck.search_by_name_and_description_and_user_and_category(params[:query])
    end
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
