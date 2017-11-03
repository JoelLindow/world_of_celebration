require 'rails_helper'

describe "user visits /countries page" do
  it "user can see all countries" do

    
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
    expect(page).to_not have_content("#{country2.name}")
    expect(page).to have_css(".flag_image")
    expect(page).to have_css(".wikipedia_link")
    expect(page).to have_css(".google_link")
  end
end
