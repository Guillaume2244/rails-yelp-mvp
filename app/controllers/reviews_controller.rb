class ReviewsController < ApplicationController

  before_action :find_restaurant, only: [:new, :create]

  def new
    @review = @restaurants.reviews.build
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
