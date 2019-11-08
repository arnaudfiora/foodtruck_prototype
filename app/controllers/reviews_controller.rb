class ReviewsController < ApplicationController
  def index
  end

  def show
    @foodtruck = Foodtruck.find(params[:foodtruck_id])
    @reviews = @foodtruck.reviews
  end

  def create
    @review = Review.new(review_params)
    @foodtruck = Foodtruck.find(params[:foodtruck_id])
    @review.foodtruck = @foodtruck
    @review.user = current_user
    if @review.save
      redirect_to foodtruck_path(@foodtruck)
    else
      render :new
    end
  end

  def new
    @foodtruck = Foodtruck.find(params[:foodtruck_id])
    @review = Review.new
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
