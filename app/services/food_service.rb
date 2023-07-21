class FoodService

  def self.food_search(food_name)
    get_url("https://api.nal.usda.gov/fdc/v1/foods/search?query=#{food_name}")
  end

  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1") do |faraday|
      faraday.params["api_key"] = ENV["FOOD_API_KEY"]
    end
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end