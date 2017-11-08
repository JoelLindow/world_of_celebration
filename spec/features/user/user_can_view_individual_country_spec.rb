require 'rails_helper'

describe "user visits /countries page" do
  it "user can see all countries" do
    VCR.use_cassette("user_sees_all_holidays") do
      user = User.create(uid: "Uid", name: "Username", email: "UserEmail", image: "ImageUrl", token: "Token")
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      country1 = Country.create!(
        name: "United States of America",
        abbreviation: "US",
        flag_img_url: "https://www.countries-ofthe-world.com/flags-normal/flag-of-United-States-of-America.png"
      )
      country2 = Country.create!(
        name: "Japan",
        abbreviation: "JP",
        flag_img_url: "https://www.countries-ofthe-world.com/flags-normal/flag-of-Japan.png"
      )

      visit countries_path
      expect(current_path).to eq("/countries")

      click_on("#{country1.name}")
      expect(current_path).to eq("/countries/#{country1.id}")

      expect(page).to have_content("#{country1.name}")
      expect(page).to have_css(".tiny_flag")
      expect(page).to have_css(".holiday_date")
      expect(page).to have_css(".wikipedia_link")
      expect(page).to have_css(".google_link")
      expect(page).to have_css(".fav_button")
      
    end
  end
end
