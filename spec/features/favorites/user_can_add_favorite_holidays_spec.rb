require 'rails_helper'

describe "user can pick a favorite holiday" do
  it "and see it in their favorites view" do
    country1 = Country.create!(
      name: "United States of America",
      abbreviation: "US",
      flag_img_url: "https://www.countries-ofthe-world.com/flags-normal/flag-of-United-States-of-America.png"
    )

    user = User.create(uid: "Uid", name: "Username", email: "UserEmail", image: "ImageUrl", token: "Token")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    holiday = Holiday.new([:"2016-01-01", [
      {:name=>"Holiday Name",
        :date=>"2016-01-01",
        :observed=>"2016-01-01",
        :public=>true
      }
      ]], country1)


      visit country_path(country1)

      expect(page).to have_css(".fav_button")
      expect(page).to have_content("Add Favorite")
      save_and_open_page


      click_on("Add Favorite")

      visit favorites_path

      expect(page).to have_content("#{country1.name}")
      expect(page).to have_css(".tiny_flag")
      expect(page).to have_css(".holiday_name")
      expect(page).to have_content(holiday.name)
      expect(page).to have_css(".holiday_date")
      expect(page).to have_css(".wikipedia_link")
      expect(page).to have_css(".google_link")




    end
  end
