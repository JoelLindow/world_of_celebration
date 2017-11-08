require 'rails_helper'

describe Country do
  it "is valid with all neccessary attributes" do
    country = Country.create!(name: "Argentina", abbreviation: "AR", flag_img_url: "https://cdn3.volusion.com/jmlfn.xfvpt/v/vspfiles/photos/argentina-flag-2.jpg?1433246627")

    expect(country.name).to eq("Argentina")
    expect(country.abbreviation).to eq("AR")
    expect(country.flag_img_url).to eq("https://cdn3.volusion.com/jmlfn.xfvpt/v/vspfiles/photos/argentina-flag-2.jpg?1433246627")
    expect(country).to be_valid
  end

  it "is invalid without name" do
    country = Country.create(abbreviation: "AR", flag_img_url: "https://cdn3.volusion.com/jmlfn.xfvpt/v/vspfiles/photos/argentina-flag-2.jpg?1433246627")

    expect(country).to be_invalid
  end

  it "is invalid without abbreviation" do
    country = Country.create(name: "Argentina", flag_img_url: "https://cdn3.volusion.com/jmlfn.xfvpt/v/vspfiles/photos/argentina-flag-2.jpg?1433246627")

    expect(country).to be_invalid
  end

  it "is invalid without flag_img_url" do
    country = Country.create(name: "Argentina", abbreviation: "AR")

    expect(country).to be_invalid
  end
end
