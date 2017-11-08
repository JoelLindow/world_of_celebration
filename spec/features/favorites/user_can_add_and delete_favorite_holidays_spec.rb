require 'rails_helper'

describe "user can pick a favorite holiday" do
  it "and add it as well as delete it" do
    VCR.use_cassette("user_can_add_favorite_holiday") do

      country1 = Country.create!(
        name: "United States of America",
        abbreviation: "US",
        flag_img_url: "https://www.countries-ofthe-world.com/flags-normal/flag-of-United-States-of-America.png"
      )

      user = User.create(uid: "Uid", name: "Username", email: "UserEmail", image: "ImageUrl", token: "Token")
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit country_path(country1)

      expect(page).to have_css(".fav_button")
      expect(page).to have_button("Favorite")

      first('.add_fav').click

      visit favorites_path

      expect(page).to have_css(".tiny_flag")
      expect(page).to have_css(".holiday_name")
      expect(page).to have_content("Last Day of Kwanzaa")
      expect(page).to have_css(".holiday_date")
      expect(page).to have_content("January 01")
      expect(page).to have_css(".wikipedia_link")
      expect(page).to have_css(".google_link")
      expect(page).to have_css(".delete_favorite")

      first('.rem_fav').click

      expect(current_path).to eq('/favorites')

      expect(page).to_not have_content("Last Day of Kwanzaa")
    end
  end
end
