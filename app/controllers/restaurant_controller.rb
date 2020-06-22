require 'uri'

class RestaurantController < ApplicationController
  def new
    print(params)
  end

  def create
    print(params)
    @restaurant = Restaurant.new(restaurant_params)
    print(@restaurant.img_url)
    if !valid_url?(@restaurant.img_url)
      @restaurant.img_url = nil
    end
    if @restaurant.save
      redirect_to article_restaurant_path
    else
      render 'new'
    end
  end
  
  
private
  def restaurant_params
    params.require(:restaurant).permit(:city, :name, :description, :img_url)
  end

  def valid_url?(url)
    uri = URI.parse(url)
    uri.is_a?(URI::HTTP) && !uri.host.nil?
  rescue URI::InvalidURIError
    false
  end

end
