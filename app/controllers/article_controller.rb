class ArticleController < ApplicationController
  def index
  end
  
  def restaurant
    @kr = Restaurant.where(city:'Seoul')
    @pt = Restaurant.where(city:'Portugal')
    @es = Restaurant.where(city:'Spain')
  end

  def city
  end
end
