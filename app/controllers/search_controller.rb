class SearchController < ApplicationController
  def index
    @facade = FoodFacade.food_search(params[:q])
  end
end
