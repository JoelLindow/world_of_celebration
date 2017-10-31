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
    expect(Country.all.count).to eq(2)

    visit countries_path

    expect(page).to have_content(country1.name)
    expect(page).to have_content(country2.name)
    expect(page).to have_css(".country_#{country1.abbreviation}")
    expect(page).to have_css(".country_#{country1.abbreviation}")
  end
end
