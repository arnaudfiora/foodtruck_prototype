class FoodtrucksController < ApplicationController
  def index
    @foodtrucks = Foodtruck.all
  end

  def show
    @foodtruck = Foodtruck.find(params[:id])
  end

  def new
    @foodtruck = Foodtruck.new
  end

  def create
    @foodtruck = Foodtruck.new(foodtruck_params)
    @foodtruck.user = current_user
    if @foodtruck.save
    redirect_to foodtrucks_path
    else
      render :new
    end
  end

  def update
  end

private
  def foodtruck_params
    params.require(:foodtruck).permit(:name, :category, :price, :capacity, :description)
  end
end
