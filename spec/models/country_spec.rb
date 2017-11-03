require 'rails_helper'

describe Country do
  it "can return attributes" do
    country = Country.create!(name: "Argentina", abbreviation: "AR", flag_img_url: "https://cdn3.volusion.com/jmlfn.xfvpt/v/vspfiles/photos/argentina-flag-2.jpg?1433246627")

    expect(country.name).to eq("Argentina")
    expect(country.abbreviation).to eq("AR")
    expect(country.flag_img_url).to eq("https://cdn3.volusion.com/jmlfn.xfvpt/v/vspfiles/photos/argentina-flag-2.jpg?1433246627")
  end
end
