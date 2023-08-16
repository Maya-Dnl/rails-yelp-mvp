class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: %i[show destroy]

  def new
    @restaurant = Restaurant.new
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render :new, status: :unprocessable_entity
    end
  end

  def top
    @restaurants = Restaurant.where(rating: 5)
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path, status: :see_other
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category, :found_on)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
