require 'rails_helper'

describe "user visits /countries page" do
  it "user can see all countries" do
    country = Country.create!(
                              name: "United States of America",
                              abbreviation: "US",
                              flag_img_url: "https://www.countries-ofthe-world.com/flags-normal/flag-of-United-States-of-America.png"
                              )

    
  end
end
