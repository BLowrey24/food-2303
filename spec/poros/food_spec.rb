require "rails_helper"

RSpec.describe Food do
  before(:each) do
    food_data = {
      gtinUpc: 1803184132,
      description: "I LOVE FOOD",
      brandOwner: "Boston",
      ingredients: "None"
    }

    @food = Food.new(food_data)
  end

  describe "initialize" do
    it "exists" do
      expect(@food).to be_a(Food)
    end

    it "initializes with attributes" do
      expect(@food.gtin_upc).to eq(1803184132)
      expect(@food.description).to eq("I LOVE FOOD")
      expect(@food.brand_owner).to eq("Boston")
      expect(@food.ingredients).to eq("None")
    end
  end
end