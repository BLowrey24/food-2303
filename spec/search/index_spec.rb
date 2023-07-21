require "rails_helper"

RSpec.describe "Search action", type: :feature do
  describe "I can search for food" do
    it "I search for any food I am taken to a new page" do
      visit "/"

      fill_in "q", with: "sweet potatoes"
      click_button "Search"
      expect(current_path).to eq("/foods")
    end

    it "When I search for a food I see a list of foods come up" do
      visit "/"
      fill_in "q", with: "sweet potatoes"
      click_button "Search"

      expect(page).to have_content("Food List")
      expect(page).to have_content("Overall total:")
      expect(page).to have_content("Brand:")
      expect(page).to have_content("Description:")
      expect(page).to have_content("Ingredients:")
      expect(page).to have_content("GTIN/UPC:")
    end
  end
end