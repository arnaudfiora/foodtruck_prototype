class BookingsController < ApplicationController
  before_action :set_foodtruck, only: [:new, :create]

  def index
    @bookings = Booking.all
  end

  def show; end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.foodtruck = @foodtruck

    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @foodtruck = Foodtruck.find(params[:foodtruck_id])
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)

    if @booking.save
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  def destroy; end

  private

  def booking_params
    params.require(:booking).permit(:date, :confirmed)
  end

  def set_foodtruck
    @foodtruck = Foodtruck.find(params[:foodtruck_id])
  end
end
