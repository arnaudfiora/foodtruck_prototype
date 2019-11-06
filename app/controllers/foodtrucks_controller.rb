class FoodtrucksController < ApplicationController
  before_action :set_foodtruck, only: :show

  def show; end

  def new
    @foodtruck = Foodtruck.new
  end

  def create
    @foodtruck = Foodtruck.new(foodtruck_params)
    @foodtruck.user = current_user
    if @foodtruck.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def update; end

  private

  def set_foodtruck
    @foodtruck = Foodtruck.find(params[:id])
  end

  def foodtruck_params
    params.require(:foodtruck).permit(:name, :category, :price, :capacity, :description)
  end
end
