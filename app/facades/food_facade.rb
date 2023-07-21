class FoodFacade
  def self.food_search(food_name)
    search_result = FoodService.food_search(food_name)
    total_hits = search_result[:totalHits]
    foods = search_result[:foods][0..9].map do |food|
      Food.new(food)
    end
    [foods, total_hits]
  end
end
