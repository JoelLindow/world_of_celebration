require 'rails_helper'

describe "Holiday Service creates a single holiday object" do
  it "and holiday object knows it's holiday name" do
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
    end

    it "and converts date to presentable format (date observed method)" do
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

        expect(poro.date_observed).to eq("January 01")
    end

    it "returns the proper month name" do
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

        expect(poro.month_namer["01"]).to eq("January")
        expect(poro.month_namer["02"]).to eq("February")
        expect(poro.month_namer["12"]).to eq("December")
    end

    it "and date fixer presents in a month name and day format" do
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

        expect(poro.date_fixer).to eq("January 01")
    end

    it "and returns proper wikipedia search url" do
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

        expect(poro.wikipedia_search).to eq("https://en.wikipedia.org/wiki/Special:Search?search=Holiday+Name+United+States")
    end

    it "and returns proper google search url" do
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

        expect(poro.google_search).to eq("https://www.google.com/search?q=Holiday+Name+United+States")
    end
  end
