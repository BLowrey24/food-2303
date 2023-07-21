require "rails_helper"

RSpec.describe "Search action", type: :feature do
  describe "I can search for food" do
    it "I search for sweet potatoes and am taken to a new page" do
      visit "/"

      fill_in "q", with: "sweet potatoes"
      click_button "Search"
      expect(current_path).to eq("/foods")
    end
  end
end