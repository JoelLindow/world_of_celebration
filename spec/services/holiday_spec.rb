require 'rails_helper'

describe "Holiday Service creates a single holiday object" do
  it "and poro has proper attributes" do
    country = Country.create!(
                              name: "United States",
                              abbreviation: "US",
                              flag_img_url: "http://www.geognos.com/api/en/countries/flag/US.png"
                              )

    holiday_data = [:"2016-01-01", [
      {:name=>"Holiday Name",
        :date=>"2016-01-01",
        :observed=>"2016-01-01",
        :public=>true
      }
    ]]

  poro = Holiday.new(holiday_data, country)

  expect(poro.name).to eq("Holiday Name")
  expect(poro.date_observed).to eq("January 01")

end
end
